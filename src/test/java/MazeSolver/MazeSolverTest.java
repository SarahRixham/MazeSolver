package MazeSolver;

import org.junit.*;
import static org.junit.Assert.*;

public class MazeSolverTest
{
	@Test
	public void method_true_returnsTrue()
	{
		MazeSolver tabulaRasa = new MazeSolver();

		boolean actual = tabulaRasa.method(true);

		assertTrue(actual);
	}
}
