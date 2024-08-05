rm -fR /usr/local/cpanel/base/frontend/jupiter/cruze_redis
mkdir /usr/local/cpanel/base/frontend/jupiter/cruze_redis
cd /usr/local/cpanel/base/frontend/jupiter/cruze_redis

echo "Downloading plugin..."
wget -q https://github.com/cruzehost/redis_cpanel/archive/main.zip -O cruze_redis.zip

# Extract archive zip
echo "Extracting plugin..."
unzip cruze_redis.zip

# Fix folder structure
mv redis_cpanel-main/* ./
#mv redis_cpanel-main/.* ./

# Register plugin with cPanel
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/jupiter/cruze_redis --theme jupiter

#Cleanup by removing release
echo "Cleaning Up..."
rm -f cruze_redis.zip
rm -rf redis_cpanel-main

# Fix permissions
echo "Finalizing permissions..."
chmod -R 755 /usr/local/cpanel/base/frontend/jupiter/cruze_redis
