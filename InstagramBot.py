import instaloader
import time

def login_instaloader(username, password):
    L = instaloader.Instaloader()
    L.login(username, password)
    return L

def get_followers(L, username):
    profile = instaloader.Profile.from_username(L.context, username)
    time.sleep(2)  # Add delay
    return set(follower.username for follower in profile.get_followers())

def get_following(L, username):
    profile = instaloader.Profile.from_username(L.context, username)
    time.sleep(2)  # Add delay
    return set(followee.username for followee in profile.get_followees())

if __name__ == '__main__':
    INSTAGRAM_USERNAME = 'specialgrade__'
    INSTAGRAM_PASSWORD = 'ahsankhan6789'

    L = login_instaloader(INSTAGRAM_USERNAME, INSTAGRAM_PASSWORD)
    
    try:
        followers = get_followers(L, INSTAGRAM_USERNAME)
        following = get_following(L, INSTAGRAM_USERNAME)
        
        non_followers = following - followers

        print(f"Non-followers: {non_followers}")
    except instaloader.exceptions.ConnectionException as e:
        print("Connection error: ", e)
        time.sleep(300)  # Wait for 5 minutes before retrying
    except Exception as e:
        print("An error occurred: ", e)
