# Build an image

def main [image: string] {
    let path = ("images" | path join $image)

    # Just check so that the directory exists
    let _ = (ls $path) 

    let tag_latest = $"($image):latest"

    # Build the container
    podman build --format oci $path -t $tag_latest
}