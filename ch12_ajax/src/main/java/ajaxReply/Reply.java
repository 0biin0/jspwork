package ajaxReply;

public class Reply {
	   private int no;
	   private String content;
	   private int ref;
	   private String name;
	   private String data;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getData() {
		return data;
	}
	public Reply(int no, String content, int ref, String name, String data) {
		super();
		this.no = no;
		this.content = content;
		this.ref = ref;
		this.name = name;
		this.data = data;
	}
	public void setData(String data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "Reply [no=" + no + ", content=" + content + ", ref=" + ref + ", name=" + name + ", data=" + data + "]";
	}
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}
	}