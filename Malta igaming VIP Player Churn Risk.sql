use practise;

CREATE TABLE player_activity (
    player_id INT PRIMARY KEY,
    username VARCHAR(100),
    country VARCHAR(50),
    signup_date DATE,
    total_deposits_eur DECIMAL(12, 2),
    last_login_date DATE,
    player_segment VARCHAR(50)
);

INSERT INTO player_activity (player_id, username, country, signup_date, total_deposits_eur, last_login_date, player_segment) VALUES
(1, 'SpinMaster_DE', 'Germany', '2025-01-10', 4500.00, '2026-06-15', 'VIP'),
(2, 'LuckySlot_MT', 'Malta', '2025-06-01', 8200.00, '2026-06-02', 'VIP'),
(3, 'BetKing_IE', 'Ireland', '2026-03-12', 1200.00, '2026-06-14', 'Regular'),
(4, 'HighRoller_PT', 'Portugal', '2024-11-20', 9800.00, '2026-06-01', 'VIP'),
(5, 'NordicWhale', 'Denmark', '2025-08-18', 15000.00, '2026-06-03', 'VIP'),
(6, 'BluffMaster', 'Ireland', '2026-02-01', 350.00, '2026-06-16', 'Regular'),
(7, 'EuroGambler', 'Germany', '2024-05-14', 6400.00, '2026-06-05', 'VIP'),
(8, 'MaltaAce', 'Malta', '2025-12-05', 2500.00, '2026-06-14', 'Regular'),
(9, 'CasinoQueen', 'Denmark', '2025-04-12', 750.00, '2026-06-12', 'Regular'),
(10, 'LisbonVibes', 'Portugal', '2025-10-01', 3100.00, '2026-06-15', 'Regular'),
(11, 'VIP_Berlin', 'Germany', '2025-03-22', 11500.00, '2026-06-04', 'VIP'),
(12, 'DublinJack', 'Ireland', '2024-07-19', 420.00, '2026-06-08', 'Regular'),
(13, 'VallettaBet', 'Malta', '2026-01-15', 550.00, '2026-06-16', 'Regular'),
(14, 'CphDealer', 'Denmark', '2025-09-09', 8900.00, '2026-06-14', 'VIP'),
(15, 'AlgarveSlots', 'Portugal', '2024-11-30', 150.00, '2026-06-11', 'Casual'),
(16, 'MunichRolls', 'Germany', '2025-05-17', 2200.00, '2026-06-15', 'Regular'),
(17, 'GozoSpins', 'Malta', '2023-04-25', 13400.00, '2026-06-02', 'VIP'),
(18, 'IrishLuck77', 'Ireland', '2026-01-10', 95.00, '2026-06-01', 'Casual'),
(19, 'PortoPunter', 'Portugal', '2025-08-14', 4100.00, '2026-06-13', 'Regular'),
(20, 'VikingKing', 'Denmark', '2025-02-28', 18000.00, '2026-06-16', 'VIP'),
(21, 'FrankfurtFun', 'Germany', '2024-04-12', 310.00, '2026-06-14', 'Casual'),
(22, 'SliemaShark', 'Malta', '2024-11-05', 16500.00, '2026-06-05', 'VIP'),
(23, 'CorkCasino', 'Ireland', '2026-03-18', 2100.00, '2026-06-14', 'Regular'),
(24, 'MadMax_PT', 'Portugal', '2025-03-01', 5000.00, '2026-06-15', 'VIP'),
(25, 'DanishDynamite', 'Denmark', '2025-07-24', 180.00, '2026-06-07', 'Casual'),
(26, 'StJuliansBet', 'Malta', '2025-02-11', 21000.00, '2026-06-01', 'VIP'),
(27, 'GalwayGamer', 'Ireland', '2025-10-15', 3400.00, '2026-06-15', 'Regular'),
(28, 'BragaBoss', 'Portugal', '2024-08-30', 720.00, '2026-06-13', 'Regular'),
(29, 'OdenseOdds', 'Denmark', '2026-01-05', 400.00, '2026-06-16', 'Casual'),
(30, 'HamburgHit', 'Germany', '2025-09-22', 9200.00, '2026-06-15', 'VIP'),
(31, 'MdinaSpins', 'Malta', '2024-06-14', 1400.00, '2026-06-14', 'Regular'),
(32, 'LimerickLad', 'Ireland', '2025-11-18', 600.00, '2026-06-09', 'Regular'),
(33, 'AzoresBet', 'Portugal', '2025-03-19', 240.00, '2026-06-12', 'Casual'),
(34, 'AarhusStar', 'Denmark', '2024-12-25', 5300.00, '2026-06-14', 'VIP'),
(35, 'StuttgartWin', 'Germany', '2026-02-02', 12500.00, '2026-06-02', 'VIP'),
(36, 'BirguBlogger', 'Malta', '2025-04-05', 85.00, '2026-06-16', 'Casual'),
(37, 'KilkennyCat', 'Ireland', '2024-10-10', 4900.00, '2026-06-16', 'VIP'),
(38, 'MadeiraMagic', 'Portugal', '2025-05-20', 11000.00, '2026-06-06', 'VIP'),
(39, 'AalborgAce', 'Denmark', '2025-07-07', 290.00, '2026-06-15', 'Casual'),
(40, 'GziraSpins', 'Malta', '2025-01-01', 7100.00, '2026-06-14', 'VIP');


with cte as (
Select *
from player_activity
where player_segment = 'VIP' and last_login_date <= date_add(curdate(), interval -7 day))
Select player_id, username, country, sum(total_deposits_eur) as total_deposit
from cte
group by player_id, username, country
order by total_deposit desc
limit 3;