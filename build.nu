# Build an image

def main [image: string] {
    let now = (date now | date format "%Y%m%d%H%M")
    let path = ("images" | path join $image)

    # Just check so that the directory exists
    let _ = (ls $path) 

    let tag_latest = $"($image):latest"
    let tag_now = $"($image):($now)"

    # Build the container
    podman build --format oci $path -t $tag_latest -t $tag_now
}