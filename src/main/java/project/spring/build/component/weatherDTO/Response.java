package project.spring.build.component.weatherDTO;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@JsonIgnoreProperties(ignoreUnknown = true) //�ʿ���� �� �ȳ־ �ǵ��� ����
public class Response {
    private ResponseHeader header;
    private ResponseBody body;
    public ResponseHeader getHeader() {
        return header;
    }

    public void setHeader(ResponseHeader header) {
        this.header = header;
    }

    public ResponseBody getBody() {
        return body;
    }

    public void setBody(ResponseBody body) {
        this.body = body;
    }
}
