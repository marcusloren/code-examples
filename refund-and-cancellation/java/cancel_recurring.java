import com.mercadopago.MP;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

		mp.cancelPreapprovalPayment(":ID");
	}
}
