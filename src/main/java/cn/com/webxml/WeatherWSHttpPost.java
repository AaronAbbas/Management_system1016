package cn.com.webxml;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * This class was generated by Apache CXF 3.2.6
 * 2018-10-27T09:58:18.503+08:00
 * Generated source version: 3.2.6
 *
 */
@WebService(targetNamespace = "http://WebXml.com.cn/", name = "WeatherWSHttpPost")
@XmlSeeAlso({ObjectFactory.class})
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
public interface WeatherWSHttpPost {

    /**
     * 
     *             
     */
    @WebMethod
    @WebResult(name = "DataSet", targetNamespace = "http://WebXml.com.cn/", partName = "Body")
    public DataSet getRegionDataset();

    /**
     * 
     *             
     */
    @WebMethod
    @WebResult(name = "ArrayOfString", targetNamespace = "http://WebXml.com.cn/", partName = "Body")
    public ArrayOfString getRegionCountry();

    /**
     * 
     *             
     */
    @WebMethod
    @WebResult(name = "ArrayOfString", targetNamespace = "http://WebXml.com.cn/", partName = "Body")
    public ArrayOfString getWeather(
        @WebParam(partName = "theCityCode", name = "theCityCode", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theCityCode,
        @WebParam(partName = "theUserID", name = "theUserID", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theUserID
    );

    /**
     * 
     *             
     */
    @WebMethod
    @WebResult(name = "DataSet", targetNamespace = "http://WebXml.com.cn/", partName = "Body")
    public DataSet getSupportCityDataset(
        @WebParam(partName = "theRegionCode", name = "theRegionCode", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theRegionCode
    );

    /**
     * 
     *             
     */
    @WebMethod
    @WebResult(name = "ArrayOfString", targetNamespace = "http://WebXml.com.cn/", partName = "Body")
    public ArrayOfString getRegionProvince();

    /**
     * 
     *             
     */
    @WebMethod
    @WebResult(name = "ArrayOfString", targetNamespace = "http://WebXml.com.cn/", partName = "Body")
    public ArrayOfString getSupportCityString(
        @WebParam(partName = "theRegionCode", name = "theRegionCode", targetNamespace = "http://WebXml.com.cn/")
        java.lang.String theRegionCode
    );
}
