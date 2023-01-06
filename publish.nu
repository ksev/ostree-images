# Publish an image under latest and the current time

def main [image: string] {
    let now = (date now | date format "%Y%m%d%H%M")
    
    ["latest", $now] | each { |tag|
        let remote = $"($env.IMAGE_REGISTRY)/($image):($tag)"
        podman tag $image $remote
        podman push $image $remote

        print $"Published: ($remote)"
    }
}