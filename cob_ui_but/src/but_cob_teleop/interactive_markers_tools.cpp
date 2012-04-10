/******************************************************************************
 * \file
 *
 * $Id:$
 *
 * Copyright (C) Brno University of Technology
 *
 * This file is part of software developed by dcgm-robotics@FIT group.
 *
 * Author: Tomas Lokaj (xlokaj03@stud.fit.vutbr.cz)
 * Supervised by: Michal Spanel (spanel@fit.vutbr.cz)
 * Date: 11/02/2012
 * 
 * This file is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This file is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this file.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <but_cob_teleop/interactive_markers_tools.h>

namespace interactive_markers
{
/*
 void makeTarget(visualization_msgs::InteractiveMarkerControl &control, float radius, float width,
 std_msgs::ColorRGBA circle_color, std_msgs::ColorRGBA line_color)
 {
 makeCircle(control, radius, width, circle_color);

 visualization_msgs::Marker marker;

 marker.pose.orientation = control.orientation;
 marker.type = visualization_msgs::Marker::LINE_LIST;
 marker.scale.x = radius;
 marker.color = line_color;

 float w = radius * width* 0.5;
 geometry_msgs::Point p;
 p.z = w;
 marker.points.push_back(p);
 p.z = -w;
 marker.points.push_back(p);
 p.y = w;
 p.z = 0;
 marker.points.push_back(p);
 p.y = -w;
 p.z = 0;
 marker.points.push_back(p);

 control.markers.push_back(marker);

 }*/

void makeCircle(visualization_msgs::InteractiveMarkerControl &control, float radius, float width,
                std_msgs::ColorRGBA color)
{
  visualization_msgs::Marker marker;

  marker.pose.orientation = control.orientation;
  marker.type = visualization_msgs::Marker::TRIANGLE_LIST;
  marker.scale.x = radius;
  marker.scale.y = radius;
  marker.scale.z = radius;
  marker.color = color;

  int steps = 36;
  std::vector<geometry_msgs::Point> circle1, circle2;

  geometry_msgs::Point v1, v2;

  for (int i = 0; i < steps; i++)
  {
    float a = float(i) / float(steps) * M_PI * 2.0;

    v1.y = 0.5 * cos(a);
    v1.z = 0.5 * sin(a);

    v2.y = (1 + width) * v1.y;
    v2.z = (1 + width) * v1.z;

    circle1.push_back(v1);
    circle2.push_back(v2);
  }

  for (int i = 0; i < steps; i++)
  {
    int i1 = i;
    int i2 = (i + 1) % steps;

    marker.points.clear();
    marker.points.push_back(circle1[i1]);
    marker.points.push_back(circle2[i1]);
    marker.points.push_back(circle1[i2]);
    marker.points.push_back(circle2[i1]);
    marker.points.push_back(circle2[i2]);
    marker.points.push_back(circle1[i2]);

    control.markers.push_back(marker);
  }
}

}