class RecipeTable {
    /**
     * 
     * @param { Object<string, number> } recipe 
     */
    constructor(recipe) {
        this.recipe = recipe ?? {};
    }

    /**
     * 
     * @param {string} name 재료명 
     * @param {number} value 재료량
     */
    update = (name, value) => {
        if (name in this.recipe) {
           
            let prev_value = Number(this.recipe[name].substring(0, this.recipe[name].length -1));
            let radio = value / prev_value;
            
            Object.keys(this.recipe).forEach(n => {
               
                if(this.recipe[n].includes('g')) {
            
                    let data = Number(this.recipe[n].substring(0, this.recipe[n].length -1));
                    if(!isNaN(data)){
                        this.recipe[n] = (data * radio).toFixed(1);
                        this.recipe[n] += 'g'
                    }else{
                        console.log("엘스")
                    }

                } else if(this.recipe[n].includes('개')) {
                    let data = Number(this.recipe[n].substring(0, this.recipe[n].length -1));
                    if(!isNaN(data)){
                        this.recipe[n] = (data * radio).toFixed(1);
                        this.recipe[n] += '개'
                    }else{
                        console.log("엘스")
                    }
                }
            });
        }    
    }

    toHtml = () => {
        let rows = Object.keys(this.recipe).map(name => {
           
            return`
                <li>
	                <div>
	                    <span class="ingre_name">${name}</span>
	                    <span class="ingre_unit">${this.recipe[name]}</span>
	                </div>
                    <hr class="divider-w pt-20">
                </li>
                `
        });

        return rows.join('');
    }
}