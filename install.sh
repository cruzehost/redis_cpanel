rm -fR /usr/local/cpanel/base/frontend/paper_lantern/cruze_redis
mkdir /usr/local/cpanel/base/frontend/paper_lantern/cruze_redis
cd /usr/local/cpanel/base/frontend/paper_lantern/cruze_redis

echo "Downloading plugin..."
wget -q https://github.com/cruzehost/redis_cpanel/archive/main.zip -O cruze_redis.zip

# Extract archive zip
echo "Extracting plugin..."
unzip cruze_redis.zip

# Fix folder structure
mv cpanel_redis-main/* ./
mv cpanel_redis-main/.* ./

# Register plugin with cPanel
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/cruze_redis --theme paper_lantern

#Cleanup by removing release
echo "Cleaning Up..."
rm -f cruze_redis.zip

# Fix permissions
echo "Finalizing permissions..."
chmod -R 755 /usr/local/cpanel/base/frontend/paper_lantern/cruze_redis
