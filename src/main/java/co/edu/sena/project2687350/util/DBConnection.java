package co.edu.sena.project2687350.util;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL="jdbc:mysql://aws.connect.psdb.cloud/taller_2?sslMode=VERIFY_IDENTITY";

    private static final String USER="c3liz7fe46kwiy57usqo";

    private static final String PASS="pscale_pw_MW9uY6UJPZ9FLLlGEwng2Hh1nMYcRC9kItorPRC0JkC";

    private static BasicDataSource pool;

    public static BasicDataSource getInstace() throws SQLException{
        if (pool== null){
            pool = new BasicDataSource();
            pool.setUrl(URL);
            pool.setUsername(USER);
            pool.setPassword(PASS);

            pool.setInitialSize(3);
            pool.setMinIdle(3);
            pool.setMaxIdle(8);
            pool.setMaxTotal(8);
        }


        return pool;
    }

    public static Connection getConnection() throws SQLException{
        return getInstace().getConnection();
    }

}
