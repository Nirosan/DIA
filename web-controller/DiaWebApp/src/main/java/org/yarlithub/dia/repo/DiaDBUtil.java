package org.yarlithub.dia.repo;

import com.mysql.jdbc.Connection;
import org.yarlithub.dia.repo.object.Device;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Project YIT DIA
 * Created by jaykrish on 5/25/14.
 */
public class DiaDBUtil {
    private static final Logger LOGGER = Logger.getLogger(DiaDBUtil.class.getName());

    /**
     * Create Device instance by device resultSet from current index.
     *
     * @param sql SQL String
     * @return device with positive id if successful, or id 0.
     */
    public static Device getDevice(String sql) {

        Device device = new Device();
        try {
            Connection con = DiaDBConnector.getConnection();
            ResultSet resultSet = sqlQuery(con, sql);
            if (resultSet.next()) {
                device.setId(resultSet.getInt("id"));
                device.setDevice_name(resultSet.getString("device_name"));
                device.setPin(resultSet.getString("pin"));
                device.setDevice_mask(resultSet.getString("device_mask"));
                device.setGarden_id(resultSet.getInt("garden_id"));
            }
            resultSet.close();
            con.close();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "SQLException: " + e);
        }
        return device;
    }

    /**
     * @param sql executeQuery the sql in Dia DB connection
     * @return resultSet or null
     */
    public static ResultSet sqlQuery(Connection con, String sql) throws SQLException {
        ResultSet resultSet = null;
        Statement stmt = con.createStatement();
        resultSet = stmt.executeQuery(sql);
        return resultSet;
    }

    /**
     * @param sql executeUpdate the sql in Dia DB connection
     * @return positive on success, or 0
     */
    public static int sqlUpdate(Connection con, String sql)  throws SQLException {
        int resultInt = 0;
            Statement stmt = con.createStatement();
            resultInt = stmt.executeUpdate(sql);
        return resultInt;
    }
}