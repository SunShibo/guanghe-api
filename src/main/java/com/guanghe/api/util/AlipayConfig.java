package com.guanghe.api.util;

/**
 * @author Wang bin
 * @version 1.0
 * @date 2019/12/16 17:08
 */
public class AlipayConfig {

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101400683623";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCk8qaqPCXGyuDA3e5TnrsI+wqKi+afHs7/Hal75frJ43GzzzBrIP8sjE2ZBDNHOJA3IZQ1c9gOMwz5uSUtuwmZIpEF/gk4UKA/6xsvUTedM/7dCW11ePZmvCZaCtiLFFGYnbjqD6V/jGeYNhthXz0L3tJ3rgdQbw94bMMa94qCQgZt7tSYljSuPGYw8si+UDZmH4ACZq2CbpqYdvqAmMVOC8bTk/+2QHI/UPdZlEup3YeSd2ZjYf0zawjJNtBscEd+w70NP3TgiV43pUmlRUI6nFEWbSlWXe/xJLkA2PTYy22+kZrxeVf5dE6SpjdgwD/zLQHo3aBdktVc1k2PaZ4FAgMBAAECggEANMlGluIKwNR6Gp6rP21js5sLI41j73YfjjsC2xidKnC0GXPrrczwfGQmDRrwAhHS7SG82WJKOTkTJPOgN0NM7gnG2WETuEbtEad+mqTmJFPYcwoqUla0m+oIZ/ZimBeXiTyoSZdaQjg/itF976pX0e2r8wrpYk84ZzR/N6kSVV6iHTbbTX7QJcE8ARIq/kZVQlFPfipwi0J4VJ9osrh0rtygE5wKrAYc5iRhvX0WHfgxGKe3pSQiG2QR4/qT446sldsMCqwduXHmj30rxWleT9QFqbFzLCzi3yJ+3Hn5bxqy790tTFCo6JRjqTdAP0KZZF91gXol5ea3E3v+3mdYYQKBgQDXmX5yr6BPPL7fGgVqTzDqvhI6kNGGGZaX6epJ1CbAPZ8F9OYqaUZ5eJ28XtxBTsDuTJ0iQ1HH08mofdn4B8AsKs5ETRQz44ymtb4oY4E21WirOUJwCH/RXORA8s7FOO5NMo+OAW0+EMBovN1FcEoV8H/TzQKzJksEkQJSd8YWSQKBgQDD21kZVwvrqVpzOfTyuK9SYuWdoKBD3aT7QmTVRCEsY3jKGEdMRf9FK+XmTodRd+b9CSdR64GZzK2acajwrpPDJOV4fEz8o5gA71vd1cnPJ8z2rzizmKRVufCkAnVIuColxseB/SUfAhzCEEpJx+cAjwM8Luzp9+9rNsozCmFZ3QKBgAIV8A03+bsKgWYzID5JCdYbhJ2gbQZ5FOXfU27naICPmAw8tEVQw2fFbPE3kbXoByHHB/Ye5JmkSN0iaotlt8w1lc0/WaSu3Nt4AqDtZYCcS+jsIuJmkqX52hNuxeVOia+hf5YGGYJyMwpQWWukjHLt4q6v2wjUpAElTfpyQi5RAoGBAKNSNFhXKA+aJ1zSxZnpu/ldktAA8+Pj3gHP+bmFmIwlXsJXwIywChAqbQnCDkE3VR1IFsvPMUGJVnLluNULHxipmdkA/knmOYj+EINKFYFzVQ2YTBYngVIjPbHmgtrjB/J8cj3JVL0oy8ZgQzKHSfBDUZVMJC9umu2ywKYTT97ZAoGAJ2nsLEEcaDmrSeIagr2L6gYTrSlGepyD4Te4+peqJ6rN5OJmeSeGb4GLV8Ma8phyAnbSXWOnLm7wjEfr24LLixonL8pCOigleBQpa+fuVPI6yhQhJkcrNMio354LNpW2ha3bzp4ToqTg003VH2/hjPaePTlcw7QUKTt3+iHjOi4=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiaXvIpnnk7UpFBO4alShp8Z4RIqCJdUVem9LITS/oq2WyVQqTe9rswiFTve8AxfZOBFzlCR1KrLViTJxwXkSGJUuhdDoUIbrjC47ueANCQbVJAm3anXFksoEAu7151/ryiHN62yGCWqfWYYAaRCSrF+2+iEWTtB6vMorXzXZeo9t0I0ZPz7x+Cu2LSDLERj+Wn/c5yJnlC1SZTe44uf4MVDlaEL3vP1QoOMnK4FJ16rsxFvxDSWChN91DEPrR3DKAwjP43inrBG2cDqqtX6PzDd6jdfZVdRAW1eyRMCcDHwYBOosT3whiPGzfTgYd4GsaHGmQMWhswUFKhDiTP1f0wIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    //这里地址为，支付成功之后跳转的地址，异步地址
    public static String notify_url = "http://106.13.94.196:8080/notify_url";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    //这里地址为，支付成功之后跳转的地址，同步
    //public static String return_url = "http://localhost:8080/ticketsystem/alipayReturnNoticebill";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";
}
