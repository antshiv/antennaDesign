%%Create Variables
L1 = 3.94;
L2 = 2.7;
L4 = 2.64;
L5 = 2;
L6 = 4.9;
W1 = 0.9;
W2 = 0.5;
D1 = 0.5;
D2 = 0.3;
D3 = 0.3;
D4 = 0.5;
D5 = 1.4;
D6 = 1.7;
L3 = W1+D5+W2+D6+W2;
Wgp = 30;
Lgp = D1+L3+2*L5+2*L2+D3;
LBS = Lgp;
WBS = Wgp+L6-D4+W2+D2;

%%Create pcbStack object
pcbobj = pcbStack;

%%Create board shape
    %Creating BoardShape metal layer.
        %Creating BoardShape shape.
        BoardShape = antenna.Rectangle;
        BoardShape.Name = "BoardShape";
        BoardShape.Center = ([LBS/2,WBS/2-Wgp]).*0.001;
        BoardShape.Length = (LBS).*0.001;
        BoardShape.Width = (WBS).*0.001;
        BoardShape = rotate(BoardShape,0,[BoardShape.Center,-1],[BoardShape.Center,1]);
    BoardShape = BoardShape;
pcbobj.BoardShape = BoardShape;

%%Create Stackup
    %Creating TopMetalLayer metal layer.
        %Creating Rectangle2 shape.
        Rectangle2 = antenna.Rectangle;
        Rectangle2.Name = "Rectangle2";
        Rectangle2.Center = ([W1/2+D1,L6/2-D4]).*0.001;
        Rectangle2.Length = (W1).*0.001;
        Rectangle2.Width = (L6).*0.001;
        Rectangle2 = rotate(Rectangle2,0,[Rectangle2.Center,-1],[Rectangle2.Center,1]);
            %Creating Rectangle3 shape.
            Rectangle3 = antenna.Rectangle;
            Rectangle3.Name = "Rectangle3";
            Rectangle3.Center = ([L3/2+D1,L6-W2/2]).*0.001;
            Rectangle3.Length = (L3).*0.001;
            Rectangle3.Width = (W2).*0.001;
            Rectangle3 = rotate(Rectangle3,0,[Rectangle3.Center,-1],[Rectangle3.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle3;%Add
            %Creating Rectangle4 shape.
            Rectangle4 = antenna.Rectangle;
            Rectangle4.Name = "Rectangle4";
            Rectangle4.Center = ([W1+D5+W2/2+D1,L6/2-D4]).*0.001;
            Rectangle4.Length = (W2).*0.001;
            Rectangle4.Width = (L6).*0.001;
            Rectangle4 = rotate(Rectangle4,0,[Rectangle4.Center,-1],[Rectangle4.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle4;%Add
            %Creating Rectangle5 shape.
            Rectangle5 = antenna.Rectangle;
            Rectangle5.Name = "Rectangle5";
            Rectangle5.Center = ([D1+W1+D5+W2+D6+W2/2,L6-L4/2-W2]).*0.001;
            Rectangle5.Length = (W2).*0.001;
            Rectangle5.Width = (L4).*0.001;
            Rectangle5 = rotate(Rectangle5,0,[Rectangle5.Center,-1],[Rectangle5.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle5;%Add
            %Creating Rectangle6 shape.
            Rectangle6 = antenna.Rectangle;
            Rectangle6.Name = "Rectangle6";
            Rectangle6.Center = ([D1+L3+L5/2,L6-W2/2-L4]).*0.001;
            Rectangle6.Length = (L5).*0.001;
            Rectangle6.Width = (W2).*0.001;
            Rectangle6 = rotate(Rectangle6,0,[Rectangle6.Center,-1],[Rectangle6.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle6;%Add
            %Creating Rectangle7 shape.
            Rectangle7 = antenna.Rectangle;
            Rectangle7.Name = "Rectangle7";
            Rectangle7.Center = ([W2/2+D1+L3+L5,L6-L4/2-W2]).*0.001;
            Rectangle7.Length = (W2).*0.001;
            Rectangle7.Width = (L4).*0.001;
            Rectangle7 = rotate(Rectangle7,0,[Rectangle7.Center,-1],[Rectangle7.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle7;%Add
            %Creating Rectangle8 shape.
            Rectangle8 = antenna.Rectangle;
            Rectangle8.Name = "Rectangle8";
            Rectangle8.Center = ([L2/2+D1+L3+L5,L6-W2/2]).*0.001;
            Rectangle8.Length = (L2).*0.001;
            Rectangle8.Width = (W2).*0.001;
            Rectangle8 = rotate(Rectangle8,0,[Rectangle8.Center,-1],[Rectangle8.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle8;%Add
            %Creating Rectangle9 shape.
            Rectangle9 = antenna.Rectangle;
            Rectangle9.Name = "Rectangle9";
            Rectangle9.Center = ([D1+L3+L5+L2-W2/2,L6-L4/2-W2]).*0.001;
            Rectangle9.Length = (W2).*0.001;
            Rectangle9.Width = (L4).*0.001;
            Rectangle9 = rotate(Rectangle9,0,[Rectangle9.Center,-1],[Rectangle9.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle9;%Add
            %Creating Rectangle10 shape.
            Rectangle10 = antenna.Rectangle;
            Rectangle10.Name = "Rectangle10";
            Rectangle10.Center = ([D1+L3+L5+L2+L5/2,L6-W2/2-L4]).*0.001;
            Rectangle10.Length = (L5).*0.001;
            Rectangle10.Width = (W2).*0.001;
            Rectangle10 = rotate(Rectangle10,0,[Rectangle10.Center,-1],[Rectangle10.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle10;%Add
            %Creating Rectangle11 shape.
            Rectangle11 = antenna.Rectangle;
            Rectangle11.Name = "Rectangle11";
            Rectangle11.Center = ([D1+L3+L5+L2+L5+W2/2,L6-L4/2-W2]).*0.001;
            Rectangle11.Length = (W2).*0.001;
            Rectangle11.Width = (L4).*0.001;
            Rectangle11 = rotate(Rectangle11,0,[Rectangle11.Center,-1],[Rectangle11.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle11;%Add
            %Creating Rectangle12 shape.
            Rectangle12 = antenna.Rectangle;
            Rectangle12.Name = "Rectangle12";
            Rectangle12.Center = ([L2/2+D1+L3+L5+L2+L5,L6-W2/2]).*0.001;
            Rectangle12.Length = (L2).*0.001;
            Rectangle12.Width = (W2).*0.001;
            Rectangle12 = rotate(Rectangle12,0,[Rectangle12.Center,-1],[Rectangle12.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle12;%Add
            %Creating Rectangle13 shape.
            Rectangle13 = antenna.Rectangle;
            Rectangle13.Name = "Rectangle13";
            Rectangle13.Center = ([L2+D1+L3+L5+L2+L5-W2/2,L6-L1/2-W2]).*0.001;
            Rectangle13.Length = (W2).*0.001;
            Rectangle13.Width = (L1).*0.001;
            Rectangle13 = rotate(Rectangle13,0,[Rectangle13.Center,-1],[Rectangle13.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle13;%Add
    TopMetalLayer = Rectangle2;
    %Creating DielectricLayer1 dielectric layer.
    DielectricLayer1 = dielectric("Name",'Custom',"EpsilonR",4.5,"LossTangent",0.026,"Thickness",0.00025);
    %Creating Ground metal layer.
        %Creating GND shape.
        GND = antenna.Rectangle;
        GND.Name = "GND";
        GND.Center = ([Lgp/2,-Wgp/2]).*0.001;
        GND.Length = (Lgp).*0.001;
        GND.Width = (Wgp).*0.001;
        GND = rotate(GND,0,[GND.Center,-1],[GND.Center,1]);
    Ground = GND;
    %Creating DielectricLayer2 dielectric layer.
    DielectricLayer2 = dielectric("Name",'Custom',"EpsilonR",4.5,"LossTangent",0.026,"Thickness",0.00075);

%%Create Feed
feedloc = [[D1+W1+D5+W2/2,-D4/2],[1 3];...
    ];

%%Create Via
vialoc = [[D1+W1/2,-D4/2],[1 3];...
    ];

%%Create Metal
metalobj = metal;
metalobj.Name = 'Copper';
metalobj.Conductivity = 59600000;
metalobj.Thickness = 0.000889; % 0.035 mils

pcbobj.Conductor = metalobj;

%%Assign properties
pcbobj.BoardThickness = 0.001;
pcbobj.Layers = {TopMetalLayer,DielectricLayer1,Ground,DielectricLayer2,};
pcbobj.FeedLocations = feedloc;
pcbobj.FeedDiameter = 0.00025;
pcbobj.ViaLocations = vialoc;
pcbobj.ViaDiameter = 0.000225;
pcbobj.FeedViaModel = 'square';
pcbobj.FeedVoltage = 1;
pcbobj.FeedPhase = 0;
