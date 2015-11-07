package MazeSolver;

import org.junit.Test;
import static org.junit.Assert.*;

public class MazeTest {

    @Test
    public void solve_simpleMaze_solvedMaze(){

        Maze maze =
            new Maze(
                "#####\n" +
                "#S E#\n" +
                "#####");

        String solution = maze.solve();

        String expected =
            "#####\n" +
            "#SXE#\n" +
            "#####";

        assertEquals(expected, solution);
    }
}
