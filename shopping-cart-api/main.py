from fastapi import FastAPI, HTTPException, status
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from decimal import Decimal

import pymysql, os
import json

app = FastAPI()

origins = [
    "*"
] # 正常來說不能這樣

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

def get_db_connection():
    return pymysql.connect(
        host=os.getenv("DB_HOST") or "127.0.0.1",
        user=os.getenv("DB_USER") or "dev",
        password=os.getenv("DB_PASSWORD") or "heythisips1289Defcicda",
        database=os.getenv("DB_NAME") or "myshoppingcart10",
        port=int(os.getenv("DB_PORT")) or 23306
    )
# Product schema
class Product(BaseModel):
    id: int
    title: str
    available_sizes: list
    currency_format: str
    currency_id: str
    description: str
    installments: int
    is_free_shipping: bool
    price: float
    sku: int
    style: str
    # released: bool

class ProductsData(BaseModel):
    products: list

field_mapping = {
    "available_sizes": "availableSizes",
    "currency_format": "currencyFormat",
    "currency_id": "currencyId",
    "is_free_shipping": "isFreeShipping",
}

def rename_keys(product):
    return {
        field_mapping.get(key, key): (float(value) if isinstance(value, Decimal) else value)
        for key, value in product.items()
    }

@app.get("/products", response_model=ProductsData)
def get_products():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM products WHERE released = TRUE")
    
    columns = [col[0] for col in cursor.description] 
    products = []
    for row in cursor.fetchall():
        product = dict(zip(columns, row))
        product['available_sizes'] = json.loads(product['available_sizes']) 
        product['price'] = float(product['price'])
        product['is_free_shipping'] = bool(product['is_free_shipping'])
        product = rename_keys(product)

        products.append(product)
    
    cursor.close()
    conn.close()
    
    if not products:
        raise HTTPException(status_code=404, detail="沒有找到您所指定的商品")
    
    return  {"products": products}

@app.get("/product/{id}")
def get_product(id):
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute(f"SELECT * FROM products WHERE id = {id}") 
        columns = [col[0] for col in cursor.description]  # 獲取欄位名稱
        row = cursor.fetchone() # 只取第一筆資料
        cursor.close()
        conn.close()
        if row is None:
            raise HTTPException(status_code=404, detail="沒有找到您所指定的商品")
        try:
            product = dict(zip(columns, row))  # 資料轉陣列
            product['available_sizes'] = json.loads(product['available_sizes'])  # 可選擇尺寸陣列轉 Json
            product['price'] = float(product['price'])
            product['is_free_shipping'] = bool(product['is_free_shipping'])
            product = rename_keys(product)  # 重新對應欄位名稱
            return {"products": [product]}
        except Exception as e:
            return {"error": str(e)}
        

    except pymysql.Error as e:
        return {"Error": str(e)}


