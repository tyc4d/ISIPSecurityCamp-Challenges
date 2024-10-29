import React from 'react';
import Cart from 'components/Cart';
import * as S from './style';

const Header = () => {
  return (
    <S.HeaderContainer>
      <S.Logo><S.NavLink href="/">Niike Shop</S.NavLink></S.Logo> {/* You can replace this with an actual logo or link */}
      <S.NavLinks>
        <S.NavLink href="/">首頁</S.NavLink>
        {/* <S.NavLink href="#">Contact</S.NavLink> */}
      </S.NavLinks>
      <Cart /> {/* The cart button will appear here */}
    </S.HeaderContainer>
  );
};

export default Header;
