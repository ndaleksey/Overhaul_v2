package com.dreamer.domain;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Shishkov A.V. on 21.11.2014.
 */
@Entity
@Table(name = "user_order", schema = "public", catalog = "Test")
public class Order {
    private int id;
    private String clientName;
    private String eMail;
    private String address;
    private double flatSquare;
    private int roomsNumber;
    private String message;
    private String phoneNumber;
    private Timestamp orderDate;

    @Id
    @GenericGenerator(name = "sequence", strategy = "sequence",
            parameters = {@org.hibernate.annotations.Parameter(name = "sequence",
                    value = "sequence")})
    @GeneratedValue(generator = "sequence", strategy = GenerationType.SEQUENCE)
    @Column(name = "id", nullable = false, unique = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "client_name")
    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    @Basic
    @Column(name = "e_mail")
    public String getEMail() {
        return eMail;
    }

    public void setEMail(String eMail) {
        this.eMail = eMail;
    }

    @Basic
    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "flat_square")
    public double getFlatSquare() {
        return flatSquare;
    }

    public void setFlatSquare(double flatSquare) {
        this.flatSquare = flatSquare;
    }

    @Basic
    @Column(name = "rooms_number")
    public int getRoomsNumber() {
        return roomsNumber;
    }

    public void setRoomsNumber(int roomsNumber) {
        this.roomsNumber = roomsNumber;
    }

    @Basic
    @Column(name = "message")
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Basic
    @Column(name = "order_date")
    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    @Basic
    @Column(name = "phone_number")
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order userOrder = (Order) o;

        if (Double.compare(userOrder.flatSquare, flatSquare) != 0) return false;
        if (id != userOrder.id) return false;
        if (roomsNumber != userOrder.roomsNumber) return false;
        if (address != null ? !address.equals(userOrder.address) : userOrder.address != null) return false;
        if (clientName != null ? !clientName.equals(userOrder.clientName) : userOrder.clientName != null) return false;
        if (eMail != null ? !eMail.equals(userOrder.eMail) : userOrder.eMail != null) return false;
        if (message != null ? !message.equals(userOrder.message) : userOrder.message != null) return false;
        if (phoneNumber != null ? !phoneNumber.equals(userOrder.phoneNumber) : userOrder.phoneNumber != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (clientName != null ? clientName.hashCode() : 0);
        result = 31 * result + (eMail != null ? eMail.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        temp = Double.doubleToLongBits(flatSquare);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + roomsNumber;
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (phoneNumber != null ? phoneNumber.hashCode() : 0);
        return result;
    }
}
