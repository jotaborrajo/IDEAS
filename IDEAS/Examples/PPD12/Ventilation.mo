within IDEAS.Examples.PPD12;
model Ventilation "Ppd 12 example model"
  extends IDEAS.Examples.PPD12.PartialVentilation(bouAir(nPorts=3));

equation
  connect(stairWay.port_b, bedRoom3.port_b) annotation (Line(points=
         {{78,6},{80,6},{80,0},{80,8},{272,8},{272,20}}, color={0,127,255}));
  connect(stairWay.port_a, bathRoom.port_a) annotation (Line(points={{
          74,6},{74,6},{74,-6},{74,-4},{128,-4},{128,6}}, color={0,127,255}));
  connect(bedRoom1.port_a, stairWay.port_b) annotation (Line(points={
          {128,60},{122,60},{122,56},{78,56},{78,6}}, color={0,127,255}));
  connect(living.port_b, Diner.port_a) annotation (Line(points={{-34,
          36},{-34,-38},{-34,-38}}, color={0,127,255}));
  connect(Diner.port_a, bouAir.ports[3]) annotation (Line(points={{-34,-38},{30,
          -38},{30,202},{360,202},{360,170}},         color={0,127,255}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -200},{400,240}},
        initialScale=0.1), graphics={
        Line(points={{-72,-100},{-100,-100},{-100,100},{-68,100},{-68,-10},{0,-10},
              {0,100},{-68,100}}, color={28,108,200}),
        Line(points={{-72,-98}}, color={28,108,200}),
        Line(points={{-72,-100},{-72,-50},{0,-50},{0,-8}}, color={28,108,200}),
        Line(points={{-60,-10},{-100,-10}}, color={28,108,200}),
        Line(points={{-72,-100},{0,-100},{0,-50}}, color={28,108,200}),
        Line(points={{60,100},{160,100},{160,46},{60,46},{60,100}}, color={28,108,
              200}),
        Line(
          points={{92,100},{92,46}},
          color={28,108,200},
          pattern=LinePattern.Dash),
        Line(points={{60,46},{160,46},{160,-8},{60,-8},{60,46}}, color={28,108,200}),
        Line(points={{92,46},{92,-8}}, color={28,108,200}),
        Line(points={{220,100},{320,100},{320,46},{220,46},{220,100}},
                                                                    color={28,108,
              200}),
        Line(points={{220,46},{320,46},{320,-8},{220,-8},{220,46}}, color={28,108,
              200}),
        Line(
          points={{-68,46},{0,46}},
          color={28,108,200},
          pattern=LinePattern.Dash)}),
                                Icon(coordinateSystem(
        preserveAspectRatio=false,
        initialScale=0.1)),
    experiment(
      StartTime=1526425717,
      StopTime=1529480797,
      __Dymola_NumberOfIntervals=5000,
      __Dymola_fixedstepsize=15,
      __Dymola_Algorithm="Euler"),
    __Dymola_Commands(file=
          "Resources/Scripts/Dymola/Examples/PPD12/Ventilation.mos"
        "Simulate and plot"),
    Documentation(info="<html>
<p>
Example model of a partially renovated terraced house in Belgium.
This model adds the building ventilation system.
</p>
</html>", revisions="<html>
<ul>
<li>
January 9, 2017 by Filip Jorissen:<br/>
First implementation.
</li>
</ul>
</html>"));
end Ventilation;
