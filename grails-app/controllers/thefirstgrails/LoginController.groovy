package thefirstgrails

import lius.User
import org.springframework.web.bind.annotation.RequestBody

class LoginController {

    def index() {

    }

    /**
     * 登陆
     */
    def login(User temp) {
        def user = User.findByUsername(temp.username)

        if (user) {
            if (temp.password.encodeAsMD5() == user.password) {
                //登陆成功，保存session
                session.setAttribute("user", user)
                return redirect(uri: "/")
            } else {
                return "false"
            }
        } else {
            return "false"
        }
    }

    def register() {

    }

    /**
     * 注册
     * @param temp
     * @return
     */
    def doRegister(User temp) {
        temp.deteCreated = new Date()
        // 密码加密
        temp.password = temp.password.encodeAsMD5()
        temp.save()
        return "ok"
    }
}
