package TabulaRasa;

import org.junit.*;
import static org.junit.Assert.*;

public class TabulaRasaTest
{
	@Test
	public void method_true_returnsTrue()
	{
		TabulaRasa tabulaRasa = new TabulaRasa();

		boolean actual = tabulaRasa.method(true);

		assertTrue(actual);
	}
}
