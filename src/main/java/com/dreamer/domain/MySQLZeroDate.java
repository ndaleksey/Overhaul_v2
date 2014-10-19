package com.dreamer.domain;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.usertype.UserType;

import java.io.Serializable;
import java.sql.*;
import java.util.Date;
/**
 * Created by Shishkov A.V. on 15.10.2014.
 */
public class
        MySQLZeroDate implements UserType {

    private static final int[] SQL_TYPES = { Types.TIMESTAMP };

    /**
     * ����� SQL ���� ������ ����� ������������ ���� �������
     */
    public int[] sqlTypes() {
        return SQL_TYPES;
    }

    /**
     * ����� ��� ������ ������������ ��� �������� ���� � ��������
     */
    @SuppressWarnings("rawtypes")
    public Class returnedClass() {
        return Date.class;
    }

    /**
     * ��������� ���� �������� ��������� ���� ������
     */
    public boolean equals(Object x, Object y) throws HibernateException {
        if (x == y) {
            return true;
        } else if (x == null || y == null) {
            return false;
        } else {
            return x.equals(y);
        }
    }

    /**
     * �������� hashCode �������
     */
    public int hashCode(Object arg0) throws HibernateException {
        if (arg0 != null) {
            return arg0.hashCode();
        } else {
            return 0;
        }
    }

    /**
     * �������� �������� ����� �������
     */
    public Object deepCopy(Object value) throws HibernateException {
        if (value != null) {
            return new Date(((Date) value).getTime());
        }
        return value;
    }

    /**
     * ������ ������ ���� �� ����������
     */
    public boolean isMutable() {
        return false;
    }

    /**
     * ������������� ������� ��� ��������� � cache
     */
    public Serializable disassemble(Object value)
            throws HibernateException {
        return (Serializable) value;
    }

    /**
     * �������������� ������� �� ���������������� �������������
     */
    public Object assemble(Serializable cached, Object owner)
            throws HibernateException {
        return cached;
    }

    /**
     * ���������� �� ����� ������� ���� ���������
     */
    public Object replace(Object original, Object target, Object owner)
            throws HibernateException {
        return original;
    }

    /**
     * �������� ���������� ������ �� ������ �������������� ������ JDBC
     */
    public Object nullSafeGet(ResultSet rs, String[] names,
                              SessionImplementor session, Object owner)
            throws HibernateException, SQLException {
        // ���� ���� ����� "0000-00-00 00:00:00" ���������� null
        Date result = null;
        if (rs.getString(names[0]) != null
                && !rs.getString(names[0]).equals("0000-00-00 00:00:00")) {
            result = new Date(rs.getTimestamp(names[0]).getTime());
        }

        return result;
    }

    /**
     * ������ ���������� ������ ���������������� ���� ������ � SQL ������
     */
    public void nullSafeSet(PreparedStatement st, Object value, int index,
                            SessionImplementor session)
            throws HibernateException, SQLException {
        // ���� ���� ����� null ��������� "0000-00-00 00:00:00"
        if (value == null) {
            st.setString(index, "0000-00-00 00:00:00");
        } else {
            st.setTimestamp(index,
                    new Timestamp(((Date) value).getTime()));
        }

    }
}
