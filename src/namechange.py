folder_name = '/Users/jincheng/Downloads/imgs'

import os
import uuid
  
COUNT = 3
print(len([name for name in os.listdir(folder_name) if os.path.isfile(name)]))
path, dirs, files = next(os.walk(folder_name))
print(len(files))

for f in os.listdir(folder_name):
    COUNT = COUNT + 1

    f_name = str(COUNT)
    #f_name = str(uuid.uuid4())
  
    new_name = f_name + ".jpg"
    os.rename(os.path.join(folder_name,f), os.path.join(folder_name,new_name))


print(str(COUNT) + "images all done!")