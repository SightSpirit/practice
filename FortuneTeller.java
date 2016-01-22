import javax.swing.*;
import java.awt.event.*;
import java.awt.BorderLayout;
import java.util.*;
import java.util.Random;
import java.util.stream.IntStream;

//  TODO Write documentation. 
public class FortuneTeller {
	
	private JFrame window = new JFrame("What's your fortune?");
	private JButton button = new JButton("Tell me!");
	private JTextField output = new JTextField();

	public FortuneTeller() {
		window.setSize(200, 200);
		window.add(button,BorderLayout.CENTER);
		window.add(output,BorderLayout.SOUTH);
		window.addWindowListener(new WindowAdapter() {
	         public void windowClosing(WindowEvent windowEvent){
	            System.exit(0);
	         }
		});
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e){
				Random rng = new Random();
				IntStream ints = rng.ints(1,6);
				PrimitiveIterator.OfInt iter = ints.iterator();
				int fortune = iter.nextInt();
				if (fortune == 1) {
					output.setText("Your life's gonna suck.");
				} else if (fortune == 2) {
					output.setText("You will buy new clothes.");
				} else if (fortune == 3) {
					output.setText("Life's like a box.");
				} else if (fortune == 4) {
					output.setText("You will meet a new friend.");
				} else {
					output.setText("Life is gooooood!");
				}
			}
			});
		
	}
	
	public void show(){
		window.setVisible(true);
	}

}

class Exec {

	public static void main(String[] args) {
		FortuneTeller window = new FortuneTeller();
		window.show();
	}

}
