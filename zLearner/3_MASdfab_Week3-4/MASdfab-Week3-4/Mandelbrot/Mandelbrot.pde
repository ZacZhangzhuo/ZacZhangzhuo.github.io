import peasy.*;
int DIM = 64;
PeasyCam cam;
PrintWriter output;

ArrayList<PVector> mandelbrot = new ArrayList<PVector>();
// ArrayList<PVector> outMandelbrot = new ArrayList<PVector>();
int outData[][][] = new int[DIM][DIM][DIM];

class Spheriacal{
    float r, theta, phi;
    Spheriacal(float r, float theta, float phi) {
        this.r = r;
        this.theta = theta;
        this.phi = phi;
    }
}

Spheriacal spheriacal(float x, float y, float z) {
    float r = sqrt(x * x + y * y + z * z);
    float theta = atan2(sqrt(x * x + y * y), z);
    float phi = atan2(y,x);
    return new Spheriacal(r, theta, phi);
}


void setup() {
    size(600, 600, P3D);
    
    cam = new PeasyCam(this, 500);
    // !output
    // output = createWriter("C:\\Zac\\19 Github\\Notes\\MASdfab-Week5\\DIM"+DIM+".csv");
    
    // Ball
    for (int i = 0; i < DIM; i++) {
        for (int j = 0; j < DIM; j++) {
            boolean edge = false;
            for (int k = 0; k < DIM; k++) {
                float x = map(i, 0,DIM, -1,1);
                float y = map(j, 0,DIM, -1,1);
                float z = map(k, 0,DIM, -1,1);
                
                PVector zeta = new PVector(0,0,0);
                
                
                int interation = 0;
                int maxInteration = 10;
                
                int n = 8;
                
                while(true) {
                    
                    Spheriacal spheriacalZ = spheriacal(zeta.x,zeta.y,zeta.z);
                    float newx = pow(spheriacalZ.r,n) * sin(spheriacalZ.theta * n) * cos(spheriacalZ.phi * n);
                    float newy = pow(spheriacalZ.r,n) * sin(spheriacalZ.theta * n) * sin(spheriacalZ.phi * n);
                    float newz = pow(spheriacalZ.r,n) * cos(spheriacalZ.theta * n);
                    
                    zeta.x = newx + x;
                    zeta.y = newy + y;
                    zeta.z = newz + z;
                    
                    interation++;
                    
                    if (spheriacalZ.r > 16) {
                        if (edge)edge = false;
                        // println (i+"x"+j+"x"+k);
                        // outMandelbrot.add(new PVector(100 * x, 100 * y, 100 * z));
                        outData[i][j][k] = 0;
                        output.println(outData[i][j][k]);
                        break;
                    }
                    
                    if (interation > maxInteration) {
                        //println (i+"x"+j+"x"+k);
                        // if (!edge)
                        // {
                        // edge = true;
                        
                        // println(new PVector(100 * x, 100 * y, 100 * z));
                    // }
                        // stroke(255, 255, 255);
                        mandelbrot.add(new PVector(100 * x, 100 * y, 100 * z));
                        outData[i][j][k] = 1;
                        output.println(outData[i][j][k]);
                        break;
                    }
                    
                }
            }
        }
    }
    
    
    // println(t);
    // println ( DIM*DIM*DIM);
    // println (mandelbrot.size()+outMandelbrot.size());
}

void draw() {
    background(0);  
    stroke(255, 255,255);
    for (PVector v : mandelbrot) {
        point(v.x, v.y, v.z);
    }
}

void keyPressed() {
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
    exit(); // Stops the program
}
