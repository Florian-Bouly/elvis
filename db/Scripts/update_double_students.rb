
# frozen_string_literal: true

#NE DEVRAIS JAMAIS ETRE UTILISER => en cas d'urgence (mauvaises données)

activities = Activity.where(id: [1343, 1345, 1442, 1346, 1385, 1386, 1349, 1352, 1356, 1316, 1358, 1353, 1354, 1355, 1388, 1389, 1368, 1359, 1365, 1370, 1326, 1327, 1328, 1460, 1473, 1415, 1443, 1447, 1322, 1323, 1366, 1367, 1369, 1324, 1390, 1392, 1371, 1318, 1475, 1393, 1360, 1361, 1362, 1363, 1364, 1394, 1398, 1396, 1400, 1401, 1404, 1406, 1329, 1331, 1332, 1333, 1335, 1336, 1372, 1373, 1375, 1376, 1377, 1378, 1417, 1421, 1374, 1463, 1330, 1462, 1465, 1444, 1470, 1472, 1445, 1446, 1448, 1399, 1402, 1403, 1405, 1450, 1451, 1464, 1437, 1467, 1469, 1338, 1342, 1379, 1380, 1381, 1427, 1428, 1429, 1466, 1471, 1407, 1474, 1477, 1436, 1408, 1441, 1409, 1410, 1413, 1454, 1452, 1430, 1438, 1439, 1411, 1412, 1453, 1455, 1457, 1458, 1339, 1341, 1383, 1384, 1435, 1387, 1382, 1440, 1456, 1459, 1501, 1495, 1503, 1502, 1507, 1480, 1515, 1482, 1483, 1484, 1485, 1516, 1517, 1481, 1486, 1490, 1491, 1476, 1493, 1478, 1513, 1479, 1514, 1350, 1351, 1520, 1521, 1522, 1523, 1500, 1504, 1505, 1524, 1506, 1508, 1525, 1509, 1526, 1528, 1529, 1530, 1510, 1511, 1512, 1577, 1578, 1553, 1579, 1580, 1534, 1535, 1536, 1537, 1538, 1531, 1532, 1533, 1572, 1576, 1567, 1539, 1554, 1560, 1559, 1562, 1561, 1563, 1540, 1566, 1541, 1416, 1418, 1419, 1420, 1555, 1556, 1573, 1574, 1575, 1422, 1423, 1424, 1425, 1569, 1570, 1571, 1619, 1601, 1628, 1602, 1625, 1626, 1631, 1634, 1632, 1633, 1317, 1319, 1613, 1636, 1609, 1614, 1600, 1610, 1585, 1321, 1621, 1624, 1627, 1603, 1616, 1618, 1426, 1630, 1629, 1611, 1620, 1623, 1641, 1668, 1662, 1669, 1670, 1664, 1542, 1543, 1544, 1606, 1545, 1546, 1547, 1649, 1650, 1645, 1658, 1646, 1659, 1661, 1648, 1652, 1642, 1654, 1660, 1671, 1643, 1644, 1639, 1665, 1667])

sauv = []

Activity.includes(:time_interval, teachers_activities: { teacher: { planning: :time_intervals } }, activity_instances: :time_interval, students: { user: { planning: :time_intervals } }).where(id: activities.ids).find_each(batch_size: 50) do |a|
  instances = a.activity_instances

  instances.each do |i|
    tmp = i.student_attendances.all

    tmp.each do |st1|
      res = tmp.where(user_id: st1.user_id).where.not(id: st1.id)
      if !st1.nil? && !res.empty? && !sauv.include?(st1.id) && !sauv.include?(res.first.id)
        sauv << st1.id
      end
    end


  end
end

sauv.length

sauv.each {|s| StudentAttendance.destroy s}
