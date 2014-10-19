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
     * Какие SQL типы данных могут отображаться этим классом
     */
    public int[] sqlTypes() {
        return SQL_TYPES;
    }

    /**
     * Какой тип данных используется для хранения даты в объектах
     */
    @SuppressWarnings("rawtypes")
    public Class returnedClass() {
        return Date.class;
    }

    /**
     * Сравнение двух объектов заданного типа данных
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
     * Получить hashCode объекта
     */
    public int hashCode(Object arg0) throws HibernateException {
        if (arg0 != null) {
            return arg0.hashCode();
        } else {
            return 0;
        }
    }

    /**
     * Создание глубокой копии объекта
     */
    public Object deepCopy(Object value) throws HibernateException {
        if (value != null) {
            return new Date(((Date) value).getTime());
        }
        return value;
    }

    /**
     * Объект нашего типа не изменяемый
     */
    public boolean isMutable() {
        return false;
    }

    /**
     * Трансформация объекта для помещения в cache
     */
    public Serializable disassemble(Object value)
            throws HibernateException {
        return (Serializable) value;
    }

    /**
     * Восстанавление объекта из сериализованного представления
     */
    public Object assemble(Serializable cached, Object owner)
            throws HibernateException {
        return cached;
    }

    /**
     * Вызывается во время слияния двух сущностей
     */
    public Object replace(Object original, Object target, Object owner)
            throws HibernateException {
        return original;
    }

    /**
     * Создание экземпляра класса из набора сопоставленных данных JDBC
     */
    public Object nullSafeGet(ResultSet rs, String[] names,
                              SessionImplementor session, Object owner)
            throws HibernateException, SQLException {
        // Если дата равна "0000-00-00 00:00:00" возвращаем null
        Date result = null;
        if (rs.getString(names[0]) != null
                && !rs.getString(names[0]).equals("0000-00-00 00:00:00")) {
            result = new Date(rs.getTimestamp(names[0]).getTime());
        }

        return result;
    }

    /**
     * Запись экземпляра класса соспоставленного типа данных в SQL запрос
     */
    public void nullSafeSet(PreparedStatement st, Object value, int index,
                            SessionImplementor session)
            throws HibernateException, SQLException {
        // Если дата равна null сохраняем "0000-00-00 00:00:00"
        if (value == null) {
            st.setString(index, "0000-00-00 00:00:00");
        } else {
            st.setTimestamp(index,
                    new Timestamp(((Date) value).getTime()));
        }

    }
}
