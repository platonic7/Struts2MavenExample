/**
 * @author JIN
 *
 */
package model;

public class BoardVo {
	private String id;
	private String content;
	private String count;
	private String title;
	
	@Override
	public String toString() {
		return "BoardVo [id=" + id + ", content=" + content + ", count="
				+ count + ", title=" + title + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}