/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mouseclicker;

import javax.swing.*;

/**
 *
 * @author smyrnof
 */
public class MouseClicker {
    
    public static String osname = System.getProperty("os.name").toLowerCase();
    public static JFrame main;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here        
        
        if (isWindows()) {
                main = new WindowsJFrame();
                main.setVisible(true);
        } else if (isMac()) {
                main = new MacJFrame();
                main.setVisible(true);
        } else if (isUnix()) {
                main = new LinuxJFrame();
                main.setVisible(true); 
        } else {
                System.out.println("Your OS is not support!");
        }
 
    }

    public static boolean isWindows() {
        return (osname.contains("win"));
    }     

    public static boolean isMac() {
            return (osname.contains("mac"));
    }

    public static boolean isUnix() {
        return (osname.contains("nix") || osname.contains("nux") || osname.contains("aix"));
    }
        
}
