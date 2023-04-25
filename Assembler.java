import java.util.*;

class Assembler {
    public static void main(String[] args) {
      try (Scanner sc = new Scanner(System.in)) {
        inst1 in = new inst1();
        String ins = new String();
        System.out.print("ENTER CODE:");
        ins = sc.nextLine();
        ins = ins.replaceAll("\\s", "");
        ins = ins.toUpperCase();
        int n = ins.length();
        char ch;
        for ( int i=0; i<n; i++)
        { ch = ins.charAt(i);
          if ( ch == '\\' )
           n=i;
           }
        String bc = new String();
        if (ins.charAt(0) == '@')
          bc = in.Ainst(ins,n);
        else 
          bc = in.Cinst(ins,n);
        System.out.println("Binary code : "+bc);
      }  
    }
}

class inst1
{
    String Ainst(String in , int x)
    { int i,r;
      String ains = new String();
      ains = in.substring(1,x);
      char ch = in.charAt(1);
      if ( ch == 'R' || ch == 'S' || ch == 'K')
       { Symbols sb = new Symbols(ains);
         ains = sb.ret();
       }
      else
      {
      int n = Integer.parseInt(ains);
      ains = "";
      for (i=15;i>0;i--)
      { r = n%2;
        n = n/2;
        if ( r == 0)
         ains = ains.concat("0");
        else
         ains = ains.concat("1");
        }
      ains = ains.concat("0");
      StringBuilder s = new StringBuilder();
      s = s.append(ains);
      s = s.reverse();
      ains = s.toString(); 
      }
      System.out.println("A instruction");
      return ains;
       }
       
    String Cinst(String in , int x)
    { char ch;
      String op = new String();
      op = "111";
      String dest = new String();
      String comp = new String();
      String jmp = new String();
      int e=-1,s=x;
      for (int i=0; i<x; i++)
      { ch = in.charAt(i);
        if (ch == '=')
        { e = i;
        }
        if (ch == ';')
        { s = i;
          jmp = in.substring(s+1,x);
        }
      }
      if ( s != x && e == -1)
        dest = in.substring(0, s);
      else 
        { dest = in.substring(0, e);
          comp = in.substring(e+1, s);
        }
      System.out.println("Destination: "+dest);
      System.out.println("Computation: "+comp);
      System.out.println("Jump: "+jmp);
      switch (dest)
      { case "A" : dest = "100";
                   break;
        case "M" : dest = "001";
                   break;
        case "D" : dest = "010";
                   break;
        case "MD" : dest = "011";
                    break;
        case "DM" : dest = "011";
                    break;
        case "AM" : dest = "101";
                    break;
        case "MA" : dest = "101";
                    break;
        case "AD" : dest = "110";
                    break;
        case "DA" : dest = "110";
                    break;
        case "AMD" : dest = "111";
                     break;
        case "ADM" : dest = "111";
                     break;
        case "MAD" : dest = "111";
                     break;
        case "MDA" : dest = "111";
                     break;
        case "DAM" : dest = "111";
                     break;
        case "DMA" : dest = "111";
                     break;
        default : dest = "000";
                  break;
          }
      switch (jmp)
      { case "JGT" : jmp = "001";
                     break;
        case "JEQ" : jmp = "010";
                     break;
        case "JGE" : jmp = "011";
                     break;
        case "JLT" : jmp = "100";
                     break;
        case "JNE" : jmp = "101";
                     break;
        case "JLE" : jmp = "110";
                     break;
        case "JMP" : jmp = "111";
                     break;
        default : jmp = "000";
                  break;
          }
      switch (comp)
      { case "1" : comp = "0111111";
                     break;
        case "-1" : comp = "0111010";
                     break;
        case "D" : comp = "0001100";
                     break;
        case "A" : comp = "0110000";
                     break;
        case "!D" : comp = "0001101";
                     break;
        case "!A" : comp = "0110001";
                     break;
        case "-D" : comp = "0001111";
                     break;
        case "-A" : comp = "0110011";
                     break;
        case "D+1" : comp = "0011111";
                     break;
        case "1+D" : comp = "0011111";
                     break;
        case "A+1" : comp = "0110111";
                     break;
        case "1+A" : comp = "0110111";
                     break;
        case "D-1" : comp = "0001110";
                     break;
        case "A-1" : comp = "0110010";
                     break;
        case "D+A" : comp = "0000010";
                     break;
        case "A+D" : comp = "0000010";
                     break;
        case "D-A" : comp = "0010011";
                     break;
        case "A-D" : comp = "0000111";
                     break;
        case "D&A" : comp = "0000000";
                     break;
        case "A&D" : comp = "0000000";
                     break;
        case "D|A" : comp = "0010101";
                     break;
        case "A|D" : comp = "0010101";
                     break;
        case "M" : comp = "1110000";
                     break;
        case "!M" : comp = "1110001";
                     break;
        case "-M" : comp = "1110011";
                     break;   
        case "M+1" : comp = "1110111";
                     break;   
        case "1+M" : comp = "1110111";
                     break;
        case "M-1" : comp = "1110010";
                     break;
        case "D+M" : comp = "1000010";
                     break;
        case "M+D" : comp = "1000010";
                     break;
        case "D-M" : comp = "1010011";
                     break;      
        case "M-D" : comp = "1000111";
                     break;
        case "D&M" : comp = "1000000";
                     break;
        case "M&D" : comp = "1000000";
                     break;
        case "D|M" : comp = "1010101";
                     break;
        case "M|D" : comp = "1010101";
                     break;
        default : comp = "0101010";
                     break;   
        }
      String cins = new String();
      System.out.println("C instruction"); 
      System.out.println("Destination binary code: "+dest);
      System.out.println("Computation binary code: "+comp);
      System.out.println("Jump binary code: "+jmp);
      cins = op;
      cins = cins.concat(comp);
      cins = cins.concat(dest);
      cins = cins.concat(jmp);  
      return cins;                      
      }
    }
class Symbols
{ String ains = new String();
  Symbols(String in)
  { switch (in)
    { case "R0" : ains = "0000000000000000";
                  break;
      case "R1" : ains = "0000000000000001";
                  break;
      case "R2" : ains = "0000000000000010";
                  break;
      case "R3" : ains = "0000000000000011";
                  break;
      case "R4" : ains = "0000000000000100";
                  break;
      case "R5" : ains = "0000000000000101";
                  break;
      case "R6" : ains = "0000000000000110";
                  break;
      case "R7" : ains = "0000000000000111";
                  break;
      case "R8" : ains = "0000000000001000";
                  break;
      case "R9" : ains = "0000000000001001";
                  break;
      case "R10" : ains = "0000000000001010";
                  break;
      case "R11" : ains = "0000000000001011";
                  break;
      case "R12" : ains = "0000000000001100";
                  break;
      case "R13" : ains = "0000000000001101";
                  break;
      case "R14" : ains = "0000000000001110";
                  break;
      case "R15" : ains = "0000000000001111";
                  break;
      case "SCREEN" : ains = "0100000000000000";
                  break;
      case "KBD" : ains = "0110000000000000";
                  break;
      }
    }
  String ret ()
  { return ains;
  }
  }