import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;

public class Test {

	public static void main(String[] args) {
		try(
				FileOutputStream fos = new FileOutputStream("test.txt");
				OutputStreamWriter osw = new OutputStreamWriter(fos,"UTF-8");
				BufferedWriter bw = new BufferedWriter(osw);
				){
			bw.write("You say goodbye");
			bw.newLine();
			bw.write("And I say hello");
			bw.close();
			
		} catch (FileNotFoundException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}
		try(FileInputStream fis = new FileInputStream("test.txt");
				InputStreamReader isr = new InputStreamReader(fis,"UTF-8");
				BufferedReader br = new BufferedReader(isr)){
			String line;
			while((line=br.readLine()) != null) {
				System.out.println(line);
			}
		
			
		} catch (UnsupportedEncodingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		} catch (IOException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

	}

}
