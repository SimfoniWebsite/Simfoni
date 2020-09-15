/*Development Page Javascript*/

/*toggle organization form on radio button*/
function toggleOrganization() {
    const org = document.querySelectorAll('input[name="indOrOrg"]');
    for (let item of org) {
        if (item.checked && item.value === "organization") {
            if (!document.querySelector('.organization-form').classList.contains('.reveal-if-active')) {
                document.querySelector('.organization-form').classList.add('.reveal-if-active');
                document.querySelector('.organization-form').classList.remove('hidden');
            }
        } else if (item.checked && item.value === "individual") {
            if (document.querySelector('.organization-form').classList.contains('.reveal-if-active')) {
                document.querySelector('.organization-form').classList.remove('.reveal-if-active');
                document.querySelector('.organization-form').classList.add('hidden');
            }
        }
    }
}
/*toggle organization inputs when required*/
document.querySelectorAll('input[name="indOrOrg"]').forEach(item => {
    item.addEventListener('change', toggleOrganization)
});