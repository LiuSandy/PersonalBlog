package lius

class User {

    /**
     * 字段
     */
    String username//账号
    String password//密码
    String role = "普通用户"//角色
    Date deteCreated//创建时间
    Date lastUpdated//更新时间


    static constraints = {
        username(nullable: false, blank: false, unique: true)
        password(nullable: false, blank: false)
        role(nullable: false, blank: false, inList: ["普通用户", "管理员"])
        deteCreated(nullable: true, blank: false)
        lastUpdated(nullable: true, blank: false)
    }

    static mapping = {
        table "user"

        id column: "id"
        username column: "username"
        password column: "password"
        role column: "role"
        deteCreated column: "deteCreated"
        lastUpdated column: "lastUpdated"

        sort id: "desc"
    }
}
