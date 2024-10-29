import axios from 'axios';
import { IGetProductsResponse } from 'models';

const isProduction = process.env.NODE_ENV === 'production';
const apiServer = process.env.REACT_APP_API_SERVER;
export const getProducts = async () => {
  let response: IGetProductsResponse;

  if (isProduction) {
    response = await axios.get(`${apiServer}/products`);

  } else {
    response = await axios.get(`${apiServer}/products`);
 
  }

  const { products } = response.data || [];

  return products;
};
