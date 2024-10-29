import styled from 'styled-components/macro';

export const HeaderContainer = styled.header`
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px;
  background-color: ${({ theme }) => theme.colors.primary};
  color: #ececec;
  position: relative;
  z-index: 100;
`;

export const Logo = styled.h1`
  font-size: 1.5em;
  font-weight: bold;
  color: #ececec;
`;

export const NavLinks = styled.nav`
  display: flex;
  gap: 20px;
`;

export const NavLink = styled.a`
  color: #ececec;
  text-decoration: none;
  font-size: 1em;
  padding-right: 60px;
  &:hover {
    color: ${({ theme }) => theme.colors.secondary};
  }
`;
