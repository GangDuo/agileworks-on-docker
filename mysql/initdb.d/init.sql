-- データベース作成
CREATE DATABASE IF NOT EXISTS `agileworks` DEFAULT CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS `agileworks_user` DEFAULT CHARACTER SET utf8;

-- ユーザー作成と権限付与
CREATE USER IF NOT EXISTS 'agileworks'@'%' IDENTIFIED BY 'agileworks';
GRANT ALL PRIVILEGES ON agileworks.* TO 'agileworks';
GRANT PROCESS ON *.* TO 'agileworks';

CREATE USER IF NOT EXISTS 'agileworks_user'@'%' IDENTIFIED BY 'agileworks_user';
GRANT ALL PRIVILEGES ON agileworks_user.* TO 'agileworks_user';
GRANT PROCESS ON *.* TO 'agileworks_user';
