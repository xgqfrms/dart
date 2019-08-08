<template>
    <section class="guide-container">
        <div class="guide-title">
            选择兴趣
        </div>
        <div class="guide-description">
            请选择至少<span style="color: rgba(254, 77, 79, 1);">3</span>个感兴趣的标签
        </div>
        <div class="guide-selected" v-if="isMenuSelected">
            （已选择<span class="guide-selected-num">{{keys.length}}</span>个）
        </div>
        <div class="guide-items-container" v-if="isMenuSelected">
            <ItemsList
                :listObj="listObj1"
                :isShow="showType1"
            />
            <ItemsList
                :listObj="listObj2"
                :isShow="showType2"
            />
            <ItemsList
                :listObj="listObj3"
                :isShow="showType3"
            />
            <ItemsList
                :listObj="listObj4"
                :isShow="showType4"
            />
            <ItemsList
                :listObj="listObj5"
                :isShow="showType5"
            />
            <ItemsList
                :listObj="listObj6"
                :isShow="showType6"
            />
        </div>
        <section class="circle-container" data-dom="circle-container">
            <div class="circle-box" data-dom="circle-box">
                <div data-index="index_1" data-menu="menu1" class="circle circle1">
                    <span class="menu-text menu-text31">{{listObj1.title}}</span>
                </div>
                <div data-index="index_2" data-menu="menu2" class="circle circle2">
                    <span class="menu-text menu-text31">{{listObj2.title}}</span>
                </div>
                <div data-index="index_3" data-menu="menu3" class="circle circle3">
                    <span class="menu-text menu-text31">{{listObj3.title}}</span>
                </div>
                <div data-index="index_4" data-menu="menu4" class="circle circle4">
                    <span class="menu-text menu-text31">{{listObj4.title}}</span>
                </div>
                <div data-index="index_5" data-menu="menu5" class="circle circle5">
                    <span class="menu-text menu-text31">{{listObj5.title}}</span>
                </div>
                <div data-index="index_6" data-menu="menu6" class="circle circle6">
                    <span class="menu-text menu-text31">{{listObj6.title}}</span>
                </div>
                <div data-index="index_7" data-menu="menu7" class="circle circle7">
                    <span class="menu-text menu-text31">{{listObj1.title}}</span>
                </div>
                <div data-index="index_8" data-menu="menu8" class="circle circle8">
                    <span class="menu-text menu-text31">{{listObj2.title}}</span>
                </div>
                <div data-index="index_9" data-menu="menu9" class="circle circle9">
                    <span class="menu-text menu-text31">{{listObj3.title}}</span>
                </div>
                <div data-index="index_10" data-menu="menu10" class="circle circle10">
                    <span class="menu-text menu-text31">{{listObj4.title}}</span>
                </div>
                <div data-index="index_11" data-menu="menu11" class="circle circle11">
                    <span class="menu-text menu-text31">{{listObj5.title}}</span>
                </div>
                <div data-index="index_12" data-menu="menu12" class="circle circle12">
                    <span class="menu-text menu-text31">{{listObj6.title}}</span>
                </div>
            </div>
        </section>
        <div class="menus-mask-left"></div>
        <div class="menus-mask-right"></div>
        <div class="circle-radius-box">
            <div class="circle-radius"></div>
        </div>
        <div class="guide-explorer-outline"></div>
        <div
            class="guide-explorer"
            @click="startExplore">
            <span class="guide-explorer-num">
                <span style="color: red;">{{itemIndex}}</span>/6
            </span>
            <span
                class="guide-explorer-text"
                ref="guide-explorer-text">
                开探
            </span>
        </div>
    </section>
</template>

<script>
    "use strict";
    /**
     *
     * @author xgqfrms
     * @license MIT
     * @copyright gildata
     *
     * @description 模块-开探 2019-06-17 ~ 2019-06-20 (4 天)
     * @augments
     * @example
     * @link
     * @created 2019-06-17
     *
     */
    import Light from "light"
    import LightSDK from "light-sdk";
    import {
        Toast,
        Indicator,
    } from "mint-ui";
    import {
        mapActions,
        mapState,
    } from "vuex";
    import guideBackground from "../images/guide/bg.svg";
    import ItemsList from "./guide/items-list";
    import {
        ARCM,
        autoLoopArray,
        autoExchangeBackground,
        autoDefaultBackground,
    } from "./guide/guide";
    import {
        touchSwipe,
    } from "./guide/touch-swipe";
	import {
        fetchGuideGet,
        fetchGuidePost,
    } from "../api/api";
    let log = console.log;
    let error = console.error;
    export default {
        name: "StartExplorer",
        components:{
            ItemsList,
        },
        data() {
            return {
                menusLoop: [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2],
                token: "",
                keys: [],
                isSelectedEmpty: true,
                isMenuSelected: false,
                listObj1: {
                    items: [],
                    title: "",
                },
                listObj2: {
                    items: [],
                    title: "",
                },
                listObj3: {
                    items: [],
                    title: "",
                },
                listObj4: {
                    items: [],
                    title: "",
                },
                listObj5: {
                    items: [],
                    title: "",
                },
                listObj6: {
                    items: [],
                    title: "",
                },
                showType1: false,
                showType2: false,
                showType3: false,
                showType4: false,
                showType5: false,
                showType6: false,
                itemIndex: 0,
            };
        },
        methods:{
            ...mapActions({
                getUserInfo: "mine/getUserInfo",
            }),
            submit(){
                this.getUserInfo()
                Light.navigate("#/attention",{},{navBarType:2,replace:false});
                localStorage.setItem("choosedItems", true);
                // Light.navigate("#/attention");
                // LightSDK.native.switchTab({index:"0"}, "");
                // LightSDK.native.back({number: "1"}, function(){});
            },
            getGuideDatas() {
                fetchGuideGet()
                .then(json => {
                    let {
                        Message: message,
                        Result: result,
                        Success: success,
                    } = json;
                    if(success) {
                        let keys = [];
                        let names = [];
                        result.map(
                            (item, i) => {
                                let {
                                    // Order: fieldorder,
                                    FieldCode: fieldcode,
                                    FieldName: fieldname,
                                    Industrys: industrys,
                                } = item;
                                keys.push(fieldcode);
                                names.push(fieldname);
                                let list = [];
                                industrys.map(
                                    (obj, j) => {
                                        let {
                                            K: itemKey,
                                            V: itemText,
                                        } = obj;
                                        if (itemKey && itemText) {
                                            list.push({
                                                itemKey,
                                                itemText,
                                            });
                                        }
                                    }
                                );
                                this[`listObj${i+1}`].items = list;
                                this[`listObj${i+1}`].title = fieldname;
                            }
                        );
                    }
                }).catch(err => {
                    error(`fetch error`, err);
                });
            },
            postGuideDatas() {
                let items = this.keys || [];
                let params = {
                    "industryCodes": items,
                };
                fetchGuidePost(params)
                .then(json => {
                    let {
                        Success: success,
                    } = json;
                    if (success) {
                        this.skipToIndexPage();
                    }
                })
                .catch(err => {
                    error(`fetch error`, err);
                });
            },
            showLoading() {
                Indicator.open({
                    text: "加载中...",
                    spinnerType: "fading-circle",
                });
            },
            hiddenLoading() {
                Indicator.close();
            },
            initShowTypes() {
                this.showType1 = false;
                this.showType2 = false;
                this.showType3 = false;
                this.showType4 = false;
                this.showType5 = false;
                this.showType6 = false;
            },
            updateSelectedOrder(value = ``) {
                let {
                    isMenuSelected,
                } = this.$data;
                if (!isMenuSelected) {
                    this.isMenuSelected = true;
                }
                this.initShowTypes();
                this[`showType${value}`] = true;
                this.itemIndex = value;
                setTimeout(() => {
                    this.autoChecked();
                }, 500);
                setTimeout(() => {
                    this.toggleChecked();
                }, 500);
            },
            autoHighLight(){
                let keys = this.keys;
                if (keys.length < 3) {
                    this.$refs["guide-explorer-text"].classList.remove(`guide-explorer-text-highlight`);
                } else {
                    this.$refs["guide-explorer-text"].classList.add(`guide-explorer-text-highlight`);
                }
            },
            startExplore(){
                let keys = this.keys;
                if (keys.length < 3) {
                    Toast(`请选择至少 3个感兴趣的标签!`);
                } else {
                    this.postGuideDatas();
                }
            },
            skipToIndexPage() {
                this.submit();
            },
            toggleChecked() {
                let that = this;
                let keys = this.keys;
                let boxs = [...document.querySelectorAll(`[data-uid="guide-item-box"]`)];
                boxs.forEach(
                    (item, i) => {
                        let icon = item.firstElementChild;
                        let flag = item.dataset.onceFlag || false;
                        if (!flag) {
                            item.dataset.onceFlag = true;
                            item.addEventListener(`click`, () => {
                                icon.classList.toggle(`guide-item-selected`);
                                let key = icon.dataset.key;
                                if (!keys.includes(key)) {
                                    keys.push(key);
                                } else {
                                    keys = keys.filter(k => k !== key);
                                    that.keys = keys;
                                }
                                that.autoHighLight();
                            });
                        }
                    }
                );
            },
            autoChecked() {
                let keys = this.keys;
                let boxs = [...document.querySelectorAll(`[data-uid="guide-item-box"]`)];
                boxs.forEach(
                    (item, i) => {
                        let icon = item.firstElementChild;
                        let key = icon.dataset.key;
                        if (keys.includes(key)) {
                            icon.classList.add(`guide-item-selected`);
                        }
                    }
                );
            },
            autoClickMenu(isLeft = true) {
                let menusLoop = this.menusLoop;
                let index = ``;
                if (isLeft) {
                    let {
                        menus,
                        value,
                    } = autoLoopArray(menusLoop, true);// left
                    this.menusLoop = menus;
                    index = value;
                } else {
                    let {
                        menus,
                        value,
                    } = autoLoopArray(menusLoop, false);// right
                    this.menusLoop = menus;
                    index = value;
                }
                let items = [...document.querySelectorAll(`[data-index*="index"]`)];
                let indexValue = index > 6 ? (index - 6) : index;
                this.updateSelectedOrder(indexValue);
                autoExchangeBackground(items, index - 1);
            },
            manualClickMenu(direction = `center`) {
                // left, center, right
                let menusLoop = this.menusLoop;
                let index = ``;
                if (isLeft) {
                    let {
                        menus,
                        value,
                    } = autoLoopArray(menusLoop, true);// left
                    this.menusLoop = menus;
                    index = value;
                } else {
                    let {
                        menus,
                        value,
                    } = autoLoopArray(menusLoop, false);// right
                    this.menusLoop = menus;
                    index = value;
                }
                let items = [...document.querySelectorAll(`[data-index*="index"]`)];
                let indexValue = index > 6 ? (index - 6) : index;
                this.updateSelectedOrder(indexValue);
                autoExchangeBackground(items, index - 1);
                switch (direction) {
                    case `center`:
                        // highlight & no circle
                        // autoExchangeBackground(items, index);
                        break;
                    case `left`:
                        // highlight & + index * 30 & positive circle
                        this.autoCircleDirection(isLeft = false, length = 1);
                        break;
                    case `right`:
                        // highlight & - index * 30 & negative circle
                        this.autoCircleDirection(isLeft = true, length = 1);
                        break;
                    default:
                        break;
                }
            },
            autoCircleDirection(isLeft = true, length = 1) {
                autoDefaultBackground();
                let root = document.documentElement;
                let oldAngle = getComputedStyle(document.documentElement).getPropertyValue(`--defaultAngle`);
                let angle = parseInt(oldAngle.replace(`deg`, ``));
                let newAngle = ``;
                if (isLeft) {
                    newAngle = `${angle - 30 * length}deg`;
                } else {
                    newAngle = `${angle + 30 * length}deg`;
                }
                root.style.setProperty(`--defaultAngle`, newAngle);
                setTimeout(() => {
                    this.autoClickMenu(isLeft);
                }, 500);
            },
            init() {
                this.getGuideDatas();
                touchSwipe(`[data-dom="circle-container"]`, this.autoCircleDirection, false);
            },
        },
        mounted() {
            this.init();
        },
        created() {
            try {
                // this.init();
            } catch (err) {
                console.error(`init 错误: \n`, err);
            }
            // if(localStorage.getItem("choosedItems")){
            //     Light.navigate("#/attention",{},{navBarType:2});
            // }
        },
    }
</script>

<style scoped>
    @import url("./guide/guide.css");
</style>
<style lang="css">
/* overwrite z-index */
.mint-indicator-wrapper {
    top: 50%;
    left: 50%;
    position: fixed;
    transform: translate(-50%, -50%);
    border-radius: 5px;
    background: rgba(0, 0, 0, 0.7);
    color: white;
    box-sizing: border-box;
    text-align: center;
    z-index: 999999;
}
</style>
