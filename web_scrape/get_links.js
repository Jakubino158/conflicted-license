// spustit na podstranke browse
let site_links = []




for (let i = 1; i < 9; i++) {
    setTimeout(() => {
        document.querySelectorAll(".c-pagination-center_item")[0].setAttribute("href", `?ba6b8f2e_page= +${i}`)
        document.querySelectorAll(".c-pagination-center_item")[0].click()

        for (let link of document.querySelectorAll(".c-browse-right .c-link-arrow")) {
            site_links.push(link.attributes.href)
        }
    }, 500*i);
}