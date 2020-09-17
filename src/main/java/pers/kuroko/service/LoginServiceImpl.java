package pers.kuroko.service;

import pers.kuroko.entity.Login;
import pers.kuroko.mapper.LoginMapper;

public class LoginServiceImpl implements LoginService {

    LoginMapper loginMapper;

    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    @Override
    public int doLogin(Login login) {
        return loginMapper.doLogin(login);
    }

}
