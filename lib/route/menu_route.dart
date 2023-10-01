import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/menu_adapter.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/menu.dart';
import 'package:materialx_flutter/route/banner/banner_pin.dart';
import 'package:materialx_flutter/route/banner/banner_small_success.dart';
import 'package:materialx_flutter/route/form/form_ecommerce.dart';
import 'package:materialx_flutter/route/form/form_sign_up_card.dart';
import 'package:materialx_flutter/route/form/form_sign_up_card_stack.dart';
import 'package:materialx_flutter/route/progress/progress_dot_bounce.dart';
import 'package:materialx_flutter/route/progress/progress_dot_fade.dart';
import 'package:materialx_flutter/route/progress/progress_dot_grow.dart';
import 'package:materialx_flutter/route/seekbar/seekbar_color_picker.dart';
import 'package:materialx_flutter/route/seekbar/seekbar_dark.dart';
import 'package:materialx_flutter/route/seekbar/seekbar_range.dart';
import 'package:materialx_flutter/route/snacktoast/snackbar_custom.dart';
import 'package:materialx_flutter/route/snacktoast/toast_custom.dart';
import 'package:materialx_flutter/route/tabs/tabs_simple_product.dart';
import 'package:materialx_flutter/utils/fcm.dart';
import 'backdrop/backdrop_navigation.dart';
import 'backdrop/backdrop_selection.dart';
import 'backdrop/backdrop_text_field.dart';
import 'banner/banner_small_info.dart';
import 'banner/banner_small_warning.dart';
import 'banner/banner_warning.dart';
import 'banner/banner_white.dart';
import 'button/button_fab_extend.dart';
import 'button/button_material_style.dart';
import 'button/button_outlined.dart';
import 'button/button_text_label.dart';
import 'button/button_toggle_basic.dart';
import 'card/card_divider.dart';
import 'card/card_expand.dart';
import 'card/card_scrolling.dart';
import 'chip/chip_action.dart';
import 'chip/chip_choice.dart';
import 'chip/chip_input.dart';
import 'dialog/dialog_contact_us.dart';
import 'form/form_checkout.dart';
import 'form/form_sign_up_dark.dart';
import 'form/form_sign_up_image.dart';
import 'form/form_sign_up_image_card.dart';
import 'form/form_sign_up_image_outline.dart';
import 'list/list_multi_selection.dart';
import 'menu/menu_drawer_admin.dart';
import 'menu/menu_drawer_admin_dark.dart';
import 'motion/motion_fab_view.dart';
import 'motion/motion_list.dart';
import 'seekbar/seekbar_filter_flight.dart';
import 'sidesheet/side_sheet_basic.dart';
import 'backdrop/backdrop_basic.dart';
import 'backdrop/backdrop_filter.dart';
import 'backdrop/backdrop_stepper.dart';
import 'banner/banner_basic.dart';
import 'banner/banner_dark.dart';
import 'banner/banner_info.dart';
import 'bottomsheet/bottom_sheet_expand.dart';
import 'bottomsheet/bottom_sheet_player.dart';
import 'about/about_app.dart';
import 'about/about_app_simple.dart';
import 'about/about_app_simple_blue.dart';
import 'about/about_company.dart';
import 'about/about_company_card.dart';
import 'about/about_company_image.dart';
import 'article/article_big_header.dart';
import 'article/article_card.dart';
import 'article/article_food.dart';
import 'article/article_food_review.dart';
import 'article/article_medium.dart';
import 'article/article_medium_dark.dart';
import 'article/article_simple.dart';
import 'article/article_stepper.dart';
import 'bottomnavigation/bottom_navigation_article.dart';
import 'bottomnavigation/bottom_navigation_badge.dart';
import 'bottomnavigation/bottom_navigation_basic.dart';
import 'bottomnavigation/bottom_navigation_dark.dart';
import 'bottomnavigation/bottom_navigation_icon.dart';
import 'bottomnavigation/bottom_navigation_light.dart';
import 'bottomnavigation/bottom_navigation_light_simple.dart';
import 'bottomnavigation/bottom_navigation_main.dart';
import 'bottomnavigation/bottom_navigation_primary.dart';
import 'bottomnavigation/bottom_navigation_shifting.dart';
import 'bottomnavigation/bottom_navigation_shop.dart';
import 'bottomnavigation/bottom_navigation_small.dart';
import 'bottomsheet/bottom_sheet_basic.dart';
import 'bottomsheet/bottom_sheet_fab.dart';
import 'bottomsheet/bottom_sheet_filter.dart';
import 'bottomsheet/bottom_sheet_floating.dart';
import 'bottomsheet/bottom_sheet_list.dart';
import 'bottomsheet/bottom_sheet_menu.dart';
import 'button/button_basic.dart';
import 'button/button_fab_middle.dart';
import 'button/button_fab_more.dart';
import 'button/button_fab_more_text.dart';
import 'button/button_high_emphasis.dart';
import 'button/button_in_utilities.dart';
import 'button/button_with_icon.dart';
import 'card/card_basic.dart';
import 'card/card_outlined.dart';
import 'card/card_overlap.dart';
import 'card/card_timeline.dart';
import 'card/card_wizard.dart';
import 'card/card_wizard_light.dart';
import 'card/card_wizard_overlap.dart';
import 'chat/chat_bbm.dart';
import 'chat/chat_facebook.dart';
import 'chat/chat_telegram.dart';
import 'chat/chat_whatsapp.dart';
import 'chip/chip_basic.dart';
import 'chip/chip_filter.dart';
import 'chip/chip_group.dart';
import 'chip/chip_tag.dart';
import 'dashboard/dashboard_flight.dart';
import 'dashboard/dashboard_grid_fab.dart';
import 'dashboard/dashboard_pay_bill.dart';
import 'dashboard/dashboard_statistics.dart';
import 'dashboard/dashboard_wallet.dart';
import 'dashboard/dashboard_wallet_green.dart';

import 'dialog/dialog_add_post.dart';
import 'dialog/dialog_add_review.dart';
import 'dialog/dialog_basic.dart';
import 'dialog/dialog_custom.dart';
import 'dialog/dialog_custom_dark.dart';
import 'dialog/dialog_custom_info.dart';
import 'dialog/dialog_custom_light.dart';
import 'dialog/dialog_custom_warning.dart';
import 'dialog/dialog_gdpr_basic.dart';
import 'dialog/dialog_header.dart';
import 'dialog/dialog_term_of_services.dart';
import 'expand/expand_ticket.dart';
import 'form/form_address.dart';
import 'form/form_login.dart';
import 'form/form_profile_data.dart';
import 'form/form_sign_up.dart';
import 'form/form_text_area.dart';
import 'form/form_with_icon.dart';
import 'grid/grid_album.dart';
import 'grid/grid_basic.dart';
import 'grid/grid_caller.dart';
import 'grid/grid_sectioned.dart';
import 'grid/grid_single_line.dart';
import 'grid/grid_two_line.dart';
import 'list/list_basic.dart';
import 'list/list_draggable.dart';
import 'list/list_expand.dart';
import 'list/list_news_card.dart';
import 'list/list_news_image.dart';
import 'list/list_news_light.dart';
import 'list/list_news_light_hrzntl.dart';
import 'list/list_swipe.dart';
import 'login/login_card_light.dart';
import 'login/login_card_overlap.dart';
import 'login/login_image_teal.dart';
import 'login/login_simple_dark.dart';
import 'login/login_simple_green.dart';
import 'login/login_simple_light.dart';
import 'menu/menu_drawer_agri.dart';
import 'menu/menu_drawer_filter.dart';
import 'menu/menu_drawer_mail.dart';
import 'menu/menu_drawer_news.dart';
import 'menu/menu_drawer_no_icon.dart';
import 'menu/menu_drawer_simple_dark.dart';
import 'menu/menu_drawer_simple_light.dart';
import 'menu/menu_drawer_white.dart';
import 'menu/menu_drawer_white_progress.dart';
import 'menu/menu_overflow_list.dart';
import 'menu/menu_overflow_toolbar.dart';
import 'motion/motion_card.dart';
import 'motion/motion_fab.dart';
import 'motion/motion_page_basic.dart';
import 'motion/motion_search_bar_expand.dart';
import 'noitem/noitem_archived.dart';
import 'noitem/noitem_bg_cactus.dart';
import 'noitem/noitem_bg_city.dart';
import 'noitem/noitem_internet_icon.dart';
import 'noitem/noitem_internet_image.dart';
import 'noitem/noitem_search.dart';
import 'payment/payment_card_collections.dart';
import 'payment/payment_card_details.dart';
import 'payment/payment_form.dart';
import 'payment/payment_profile.dart';
import 'picker/picker_date_dark.dart';
import 'picker/picker_date_light.dart';
import 'picker/picker_time_dark.dart';
import 'picker/picker_time_light.dart';
import 'player/player_music_album_circle.dart';
import 'player/player_music_album_dark.dart';
import 'player/player_music_album_simple.dart';
import 'player/player_music_basic.dart';
import 'player/player_music_light.dart';
import 'player/player_music_song_list.dart';
import 'profile/profile_blue_appbar.dart';
import 'profile/profile_drawer_image.dart';
import 'profile/profile_drawer_simple.dart';
import 'profile/profile_image_appbar.dart';
import 'profile/profile_polygon.dart';
import 'profile/profile_purple.dart';
import 'profile/profile_red.dart';
import 'progress/progress_basic.dart';
import 'progress/progress_circle_center.dart';
import 'progress/progress_linear_center.dart';
import 'progress/progress_linear_top.dart';
import 'progress/progress_on_scroll.dart';
import 'progress/progress_pull_refresh.dart';
import 'search/search_city.dart';
import 'search/search_primary.dart';
import 'search/search_primary_bg.dart';
import 'search/search_store.dart';
import 'search/search_toolbar_dark_basic.dart';
import 'search/search_toolbar_light_basic.dart';
import 'seekbar/seekbar_light.dart';
import 'settings/setting_flat.dart';
import 'settings/setting_profile.dart';
import 'settings/setting_profile_light.dart';
import 'settings/setting_sectioned.dart';
import 'shopping/shopping_category_card.dart';
import 'shopping/shopping_category_image.dart';
import 'shopping/shopping_category_list.dart';
import 'shopping/shopping_product_details.dart';
import 'shopping/shopping_product_grid.dart';
import 'shopping/shopping_sub_category_tabs.dart';
import 'sliderimage/slider_image_header.dart';
import 'sliderimage/slider_image_header_auto.dart';
import 'snacktoast/toast_snackbar_basic.dart';
import 'snacktoast/snackbar_lift_fab.dart';
import 'steppers/steppers_dots.dart';
import 'steppers/steppers_progress.dart';
import 'steppers/steppers_text.dart';
import 'steppers/steppers_wizard_color.dart';
import 'steppers/steppers_wizard_light.dart';
import 'tabs/tabs_basic.dart';
import 'tabs/tabs_dark.dart';
import 'tabs/tabs_icon.dart';
import 'tabs/tabs_icon_light.dart';
import 'tabs/tabs_light.dart';
import 'tabs/tabs_round.dart';
import 'tabs/tabs_scroll.dart';
import 'tabs/tabs_simple_green.dart';
import 'tabs/tabs_simple_light.dart';
import 'tabs/tabs_store.dart';
import 'tabs/tabs_text_icon.dart';
import 'timeline/timeline_dot_card.dart';
import 'timeline/timeline_explore.dart';
import 'timeline/timeline_feed.dart';
import 'timeline/timeline_path.dart';
import 'timeline/timeline_simple.dart';
import 'timeline/timeline_twitter.dart';
import 'toolbar/toolbar_basic.dart';
import 'toolbar/toolbar_bottom_basic.dart';
import 'toolbar/toolbar_bottom_fab.dart';
import 'toolbar/toolbar_bottom_scroll.dart';
import 'toolbar/toolbar_collapse.dart';
import 'toolbar/toolbar_collapse_and_pin.dart';
import 'toolbar/toolbar_dark.dart';
import 'toolbar/toolbar_light.dart';
import 'verification/verification_blue.dart';
import 'verification/verification_code.dart';
import 'verification/verification_header.dart';
import 'verification/verification_image.dart';
import 'verification/verification_orange.dart';
import 'verification/verification_phone.dart';
import 'package:materialx_flutter/utils/dialog_about.dart';
import 'package:materialx_flutter/utils/tools.dart';
import 'package:materialx_flutter/widget/my_text.dart';

import 'bottomnavigation/bottom_navigation_badge_blink.dart';
import 'dialog/dialog_achievement.dart';
import 'expand/expand_basic.dart';
import 'expand/expand_invoice.dart';
import 'list/list_sectioned.dart';

class MenuRoute extends StatefulWidget {

  const MenuRoute();

  @override
  MenuRouteState createState() {
    return MenuRouteState();
  }
}

class MenuRouteState extends State<MenuRoute> {

  static const int MAX_PRESS = 10;
  int pressCount = 0;

  late Fcm _fcm;

  List menus = <Menu>[];
  GlobalKey<ScaffoldState> _scaffoldStateKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listMenu = MenuAdapter(menus, onItemClick).itemsTile as List<Widget>;

    return Scaffold(
      key: _scaffoldStateKey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('MaterialX Flutter', style: TextStyle(color: Colors.white)),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark
            ), backgroundColor: MyColors.grey_100_,
            floating: true, pinned: false, snap: false, titleSpacing: 0,
            leading: IconButton(icon: Icon(Icons.menu, color: MyColors.grey_10),
              onPressed: () {
                if(_scaffoldStateKey.currentState!.isDrawerOpen){
                  _scaffoldStateKey.currentState!.openEndDrawer();
                } else {
                  _scaffoldStateKey.currentState!.openDrawer();
                }
              },
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.info_outline, color: MyColors.grey_10), onPressed: () {
                showDialog(context: context, builder: (_) => DialogAboutRoute());
              }),
              IconButton(icon: Icon(Icons.notifications, color: MyColors.grey_10), onPressed: () {

              }),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                  color: MyColors.grey_100_,
                  child: Column(
                    children: listMenu,
                  )
              );
            }, childCount: 1
            ),
          )
        ],
      ),
      drawer: Container(
        width: 200, color: MyColors.grey_100_,
        child: buildDrawer(),
      )
    );
  }

  int prevExpand = -1;

  void onItemClick(int index, Menu obj) {
    if(obj.subs.isNotEmpty){ // parent
      setState(() {
        if (prevExpand != -1) {
          menus[prevExpand].expand = false;
        }
        menus[index] = obj;
        prevExpand = obj.expand ? index : -1;
      });
    } else { // child
      if(obj.route == null) return;
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return obj.route!;
      })).then((value) {

      });
    }
  }

  @override
  void initState() {
    super.initState();

    _fcm = Fcm.configure(context);
    _fcm.subscribe();

    menus.add(Menu.divider());

    Menu menu1 = Menu(100, Icons.view_column, "Bottom Navigation");
    menu1.subs.add(Menu.sub(101, "Basic", BottomNavigationBasicRoute()));
    menu1.subs.add(Menu.sub(102, "Shifting", BottomNavigationShiftingRoute()));
    menu1.subs.add(Menu.sub(103, "Light", BottomNavigationLightRoute()));
    menu1.subs.add(Menu.sub(104, "Dark", BottomNavigationDarkRoute()));
    menu1.subs.add(Menu.sub(105, "Icon", BottomNavigationIconRoute()));
    menu1.subs.add(Menu.sub(106, "Primary", BottomNavigationPrimaryRoute()));
    menu1.subs.add(Menu.sub(107, "Light Simple", BottomNavigationLightSimpleRoute()));
    menu1.subs.add(Menu.sub(108, "Article", BottomNavigationArticleRoute()));
    menu1.subs.add(Menu.sub(109, "Shop", BottomNavigationShop()));
    menu1.subs.add(Menu.sub(110, "Small", BottomNavigationSmall()));
    menu1.subs.add(Menu.sub(111, "Main", BottomNavigationMainRoute()));
    menu1.subs.add(Menu.sub(112, "Badge", BottomNavigationBadgeRoute()));
    menu1.subs.add(Menu.sub(112, "Badge Blink", BottomNavigationBadgeBlinkRoute()));
    menus.add(menu1);

    Menu menu2 = Menu(200, Icons.call_to_action, "Bottom Sheet");
    menu2.subs.add(Menu.sub(201, "Basic", BottomSheetBasicRoute()));
    menu2.subs.add(Menu.sub(202, "List", BottomSheetListRoute()));
    menu2.subs.add(Menu.sub(203, "FAB", BottomSheetFabRoute()));
    menu2.subs.add(Menu.sub(204, "Floating", BottomSheetFloatingRoute()));
    menu2.subs.add(Menu.sub(205, "Menu", BottomSheetMenuRoute()));
    menu2.subs.add(Menu.sub(206, "Filter", BottomSheetFilterRoute()));
    menu2.subs.add(Menu.sub(207, "Player", BottomSheetPlayerRoute()));
    menu2.subs.add(Menu.sub(208, "Expand", BottomSheetExpandRoute()));
    menus.add(menu2);

    Menu menu34 = Menu(3400, Icons.space_dashboard, "Side Sheet");
    menu34.subs.add(Menu.sub(3401, "Basic", SideSheetBasicRoute()));
    menus.add(menu34);

    Menu menu3 = Menu(300, Icons.touch_app, "Buttons");
    menu3.subs.add(Menu.sub(301, "Basic", ButtonBasicRoute()));
    menu3.subs.add(Menu.sub(302, "In Utilities", ButtonInUtilitiesRoute()));
    menu3.subs.add(Menu.sub(303, "Fab Middle", ButtonFabMiddleRoute()));
    menu3.subs.add(Menu.sub(304, "Fab More", ButtonFabMoreRoute()));
    menu3.subs.add(Menu.sub(305, "Fab More Text", ButtonFabMoreTextRoute()));
    menu3.subs.add(Menu.sub(306, "Toggle Basic", ButtonToggleBasicRoute()));
    menu3.subs.add(Menu.sub(307, "Fab Extend", ButtonFabExtendRoute()));
    menu3.subs.add(Menu.sub(308, "Material Style", ButtonMaterialStyleRoute()));
    menu3.subs.add(Menu.sub(309, "High Emphasis", ButtonHighEmphasisRoute()));
    menu3.subs.add(Menu.sub(310, "Outlined", ButtonOutlinedRoute()));
    menu3.subs.add(Menu.sub(311, "Text Label", ButtonTextLabelRoute()));
    menu3.subs.add(Menu.sub(312, "With Icon", ButtonWithIconRoute()));
    menus.add(menu3);

    Menu menu35 = Menu(3500, Icons.receipt_long, "Backdrop");
    menu35.subs.add(Menu.sub(3501, "Basic", BackdropBasicRoute()));
    menu35.subs.add(Menu.sub(3502, "Filter", BackdropFilterRoute()));
    menu35.subs.add(Menu.sub(3503, "Navigation", BackdropNavigationRoute()));
    menu35.subs.add(Menu.sub(3504, "Steppers", BackdropStepperRoute()));
    menu35.subs.add(Menu.sub(3505, "TextField", BackdropTextFieldRoute()));
    menu35.subs.add(Menu.sub(3506, "Selection", BackdropSelectionRoute()));
    menus.add(menu35);

    Menu menu4 = Menu(400, Icons.note, "Card");
    menu4.subs.add(Menu.sub(401, "Basic", CardBasicRoute()));
    menu4.subs.add(Menu.sub(402, "Timeline", CardTimelineRoute()));
    menu4.subs.add(Menu.sub(403, "Overlap", CardOverlapRoute()));
    menu4.subs.add(Menu.sub(404, "Wizard", CardWizardRoute()));
    menu4.subs.add(Menu.sub(405, "Wizard Light", CardWizardLightRoute()));
    menu4.subs.add(Menu.sub(406, "Wizard Overlap", CardWizardOverlapRoute()));
    menu4.subs.add(Menu.sub(407, "Outlined", CardOutlinedRoute()));
    menu4.subs.add(Menu.sub(408, "Divider", CardDividerRoute()));
    menu4.subs.add(Menu.sub(409, "Expand", CardExpandRoute()));
    menu4.subs.add(Menu.sub(410, "Scrolling", CardScrollingRoute()));
    menus.add(menu4);

    Menu menu5 = Menu(500, Icons.label, "Chips");
    menu5.subs.add(Menu.sub(501, "Basic", ChipBasicRoute()));
    menu5.subs.add(Menu.sub(502, "Tag", ChipTagRoute()));
    menu5.subs.add(Menu.sub(503, "Group", ChipGroupRoute()));
    menu5.subs.add(Menu.sub(504, "Input", ChipInputRoute()));
    menu5.subs.add(Menu.sub(505, "Choice", ChipChoiceRoute()));
    menu5.subs.add(Menu.sub(506, "Filter", ChipFilterRoute()));
    menu5.subs.add(Menu.sub(507, "Action", ChipActionRoute()));
    menus.add(menu5);

    Menu menu6 = Menu(600, Icons.picture_in_picture, "Dialogs");
    menu6.subs.add(Menu.sub(601, "Basic", DialogBasicRoute()));
    menu6.subs.add(Menu.sub(602, "Custom", DialogCustomRoute()));
    menu6.subs.add(Menu.sub(603, "Info", DialogCustomInfoRoute()));
    menu6.subs.add(Menu.sub(604, "Warning", DialogCustomWarningRoute()));
    menu6.subs.add(Menu.sub(605, "Light", DialogCustomLightRoute()));
    menu6.subs.add(Menu.sub(606, "Dark", DialogCustomDarkRoute()));
    menu6.subs.add(Menu.sub(607, "Add Post", DialogAddPostRoute()));
    menu6.subs.add(Menu.sub(608, "Add Review", DialogAddReviewRoute()));
    menu6.subs.add(Menu.sub(609, "GDPR Basic", DialogGDPRBasicRoute()));
    menu6.subs.add(Menu.sub(610, "Term of Services", DialogTermOfServicesRoute()));
    menu6.subs.add(Menu.sub(611, "Header", DialogHeaderRoute()));
    menu6.subs.add(Menu.sub(611, "Achievement", DialogAchievementRoute()));
    menu6.subs.add(Menu.sub(611, "Contact Us", DialogContactUsRoute()));
    menus.add(menu6);

    Menu menu36 = Menu(3600, Icons.timelapse, "Motion");
    menu36.subs.add(Menu.sub(3601, "Page Basic", MotionPageBasicRoute()));
    menu36.subs.add(Menu.sub(3602, "Card", MotionCardRoute()));
    menu36.subs.add(Menu.sub(3603, "FAB", MotionFabRoute()));
    menu36.subs.add(Menu.sub(3604, "List", MotionListRoute()));
    menu36.subs.add(Menu.sub(3605, "Search Bar Expand", MotionSearchBarExpandRoute()));
    menu36.subs.add(Menu.sub(3606, "Fab View", MotionFabViewRoute()));
    menus.add(menu36);

    Menu menu7 = Menu(700, Icons.arrow_downward, "Expand");
    menu7.subs.add(Menu.sub(701, "Basic", ExpandBasicRoute()));
    menu7.subs.add(Menu.sub(702, "Invoice", ExpandInvoiceRoute()));
    menu7.subs.add(Menu.sub(703, "Ticket", ExpandTicketRoute()));
    menus.add(menu7);

    Menu menu8 = Menu(800, Icons.apps, "Grid");
    menu8.subs.add(Menu.sub(801, "Basic", GridBasicRoute()));
    menu8.subs.add(Menu.sub(802, "Single Line", GridSingleLineRoute()));
    menu8.subs.add(Menu.sub(803, "Two Line", GridTwoLineRoute()));
    menu8.subs.add(Menu.sub(804, "Sectioned", GridSectionedRoute()));
    menu8.subs.add(Menu.sub(805, "Album", GridAlbumRoute()));
    menu8.subs.add(Menu.sub(806, "Caller", GridCallerRoute()));
    menus.add(menu8);

    Menu menu9 = Menu(900, Icons.view_stream, "Lists");
    menu9.subs.add(Menu.sub(901, "Basic", ListBasicRoute()));
    menu9.subs.add(Menu.sub(902, "Sectioned", ListSectionedRoute()));
    //menu9.subs.add(Menu.sub(903, "Animation", ListAnimationRoute()));
    menu9.subs.add(Menu.sub(904, "Expand", ListExpandRoute()));
    menu9.subs.add(Menu.sub(905, "Draggable", ListDraggableRoute()));
    menu9.subs.add(Menu.sub(906, "Swipe", ListSwipeRoute()));
    menu9.subs.add(Menu.sub(907, "Multi Selection", ListMultiSelectionRoute()));
    menu9.subs.add(Menu.sub(908, "News Light", ListNewsLightRoute()));
    menu9.subs.add(Menu.sub(909, "News Light Hrzntl", ListNewsLightHrzntlRoute()));
    menu9.subs.add(Menu.sub(910, "News Card", ListNewsCardRoute()));
    menu9.subs.add(Menu.sub(911, "News Image", ListNewsImageRoute()));
    menus.add(menu9);

    Menu menu10 = Menu(1000, Icons.reorder, "Menu");
    menu10.subs.add(Menu.sub(1001, "Drawer News", MenuDrawerNewsRoute()));
    menu10.subs.add(Menu.sub(1002, "Drawer Mail", MenuDrawerMailRoute()));
    menu10.subs.add(Menu.sub(1003, "Drawer Simple Light", MenuDrawerSimpleLightRoute()));
    menu10.subs.add(Menu.sub(1004, "Drawer Simple Dark", MenuDrawerSimpleDarkRoute()));
    menu10.subs.add(Menu.sub(1005, "Drawer No Icon", MenuDrawerNoIconRoute()));
    menu10.subs.add(Menu.sub(1006, "Overflow Toolbar", MenuOverflowToolbarRoute()));
    menu10.subs.add(Menu.sub(1007, "Overflow List", MenuOverflowListRoute()));
    menu10.subs.add(Menu.sub(1008, "Drawer White", MenuDrawerWhiteRoute()));
    menu10.subs.add(Menu.sub(1009, "Drawer White Progress", MenuDrawerWhiteProgressRoute()));
    menu10.subs.add(Menu.sub(1010, "Drawer Agri", MenuDrawerAgriRoute()));
    menu10.subs.add(Menu.sub(1011, "Drawer Filter", MenuDrawerFilterRoute()));
    menu10.subs.add(Menu.sub(1012, "Drawer Admin", MenuDrawerAdminRoute()));
    menu10.subs.add(Menu.sub(1013, "Drawer Admin Dark", MenuDrawerAdminDarkRoute()));
    menus.add(menu10);

    Menu menu37 = Menu(3700, Icons.view_compact, "Banner");
    menu37.subs.add(Menu.sub(3701, "Basic", BannerBasicRoute()));
    menu37.subs.add(Menu.sub(3702, "Info", BannerInfoRoute()));
    menu37.subs.add(Menu.sub(3703, "Warning", BannerWarningRoute()));
    menu37.subs.add(Menu.sub(3704, "White", BannerWhiteRoute()));
    menu37.subs.add(Menu.sub(3705, "Dark", BannerDarkRoute()));
    menu37.subs.add(Menu.sub(3706, "Pin", BannerPinRoute()));
    menu37.subs.add(Menu.sub(3707, "Small Info", BannerSmallInfoRoute()));
    menu37.subs.add(Menu.sub(3708, "Small Success", BannerSmallSuccessRoute()));
    menu37.subs.add(Menu.sub(3709, "Small Warning", BannerSmallWarningRoute()));
    menus.add(menu37);

    Menu menu11 = Menu(1100, Icons.event, "Pickers");
    menu11.subs.add(Menu.sub(1101, "Date Light", PickerDateLightRoute()));
    menu11.subs.add(Menu.sub(1102, "Time Light", PickerTimeLightRoute()));
    menu11.subs.add(Menu.sub(1103, "Date Dark", PickerDateDarkRoute()));
    menu11.subs.add(Menu.sub(1104, "Time Dark", PickerTimeDarkRoute()));
    menus.add(menu11);

    Menu menu12 = Menu(1200, Icons.settings_backup_restore, "Progress");
    menu12.subs.add(Menu.sub(1201, "Basic", ProgressBasicRoute()));
    menu12.subs.add(Menu.sub(1202, "Linear Center", ProgressLinearCenterRoute()));
    menu12.subs.add(Menu.sub(1203, "Linear Top", ProgressLinearTopRoute()));
    menu12.subs.add(Menu.sub(1204, "Circle Center", ProgressCircleCenterRoute()));
    menu12.subs.add(Menu.sub(1205, "On Scroll", ProgressOnScrollRoute()));
    menu12.subs.add(Menu.sub(1206, "Pull Refresh", ProgressPullRefreshRoute()));
    menu12.subs.add(Menu.sub(1207, "Dot Bounce", ProgressDotBounceRoute()));
    menu12.subs.add(Menu.sub(1208, "Dot Fade", ProgressDotFadeRoute()));
    menu12.subs.add(Menu.sub(1209, "Dot Grow", ProgressDotGrowRoute()));
    menus.add(menu12);

    Menu menu13 = Menu(1300, Icons.tune, "Seekbar");
    menu13.subs.add(Menu.sub(1301, "Basic", SeekbarBasicRoute()));
    menu13.subs.add(Menu.sub(1302, "Dark", SeekbarDarkRoute()));
    menu13.subs.add(Menu.sub(1303, "Color Picker", SeekbarColorPickerRoute()));
    menu13.subs.add(Menu.sub(1304, "Range Seekbar", SeekbarRangeRoute()));
    menu13.subs.add(Menu.sub(1305, "Filter Flight", SeekbarFilterFlightRoute()));
    menus.add(menu13);

    Menu menu14 = Menu(1400, Icons.wb_iridescent, "Snackbars & Toasts");
    menu14.subs.add(Menu.sub(1401, "Basic", ToastSnackbarBasicRoute()));
    menu14.subs.add(Menu.sub(1402, "Lift FAB", SnackbarLiftFabRoute()));
    menu14.subs.add(Menu.sub(1403, "Toast Custom", ToastCustomRoute()));
    menu14.subs.add(Menu.sub(1404, "Snackbar Custom", SnackbarCustomRoute()));
    menus.add(menu14);

    Menu menu15 = Menu(1500, Icons.timeline, "Steppers");
    menu15.subs.add(Menu.sub(1501, "Text", SteppersTextRoute()));
    menu15.subs.add(Menu.sub(1502, "Dots", SteppersDotsRoute()));
    menu15.subs.add(Menu.sub(1503, "Progress", SteppersProgressRoute()));
    menu15.subs.add(Menu.sub(1504, "Wizard Light", SteppersWizardLightRoute()));
    menu15.subs.add(Menu.sub(1505, "Wizard Color", SteppersWizardColorRoute()));
    menus.add(menu15);

    Menu menu16 = Menu(1600, Icons.tab, "Tabs");
    menu16.subs.add(Menu.sub(1601, "Basic", TabsBasicRoute()));
    menu16.subs.add(Menu.sub(1602, "Store", TabsStoreRoute()));
    menu16.subs.add(Menu.sub(1603, "Light", TabsLightRoute()));
    menu16.subs.add(Menu.sub(1604, "Dark", TabsDarkRoute()));
    menu16.subs.add(Menu.sub(1605, "Icon", TabsIconRoute()));
    menu16.subs.add(Menu.sub(1606, "Text Icon", TabsTextIconRoute()));
    menu16.subs.add(Menu.sub(1607, "Icon Light", TabsIconLightRoute()));
    menu16.subs.add(Menu.sub(1608, "Scroll", TabsScrollRoute()));
    menu16.subs.add(Menu.sub(1609, "Round", TabsRoundRoute()));
    menu16.subs.add(Menu.sub(1610, "Simple Light", TabsSimpleLightRoute()));
    menu16.subs.add(Menu.sub(1611, "Simple Green", TabsSimpleGreenRoute()));
    menu16.subs.add(Menu.sub(1612, "Simple Product", TabsSimpleProductRoute()));
    menus.add(menu16);

    Menu menu17 = Menu(1700, Icons.assignment, "Form");
    menu17.subs.add(Menu.sub(1701, "Login", FormLoginRoute()));
    menu17.subs.add(Menu.sub(1702, "Sign Up", FormSignUpRoute()));
    menu17.subs.add(Menu.sub(1703, "Profile Data", FormProfileDataRoute()));
    menu17.subs.add(Menu.sub(1704, "With Icon", FormWithIconRoute()));
    menu17.subs.add(Menu.sub(1705, "Text Area", FormTextAreaRoute()));
    menu17.subs.add(Menu.sub(1706, "Address", FormAddressRoute()));
    menu17.subs.add(Menu.sub(1707, "Checkout", FormCheckoutRoute()));
    menu17.subs.add(Menu.sub(1708, "Ecommerce", FormEcommerceRoute()));
    menu17.subs.add(Menu.sub(1709, "Sign Up Card", FormSignUpCardRoute()));
    menu17.subs.add(Menu.sub(1710, "Sign Up Card Stack", FormSignUpCardStackRoute()));
    menu17.subs.add(Menu.sub(1711, "Sign Up Dark", FormSignUpDarkRoute()));
    menu17.subs.add(Menu.sub(1712, "Sign Up Image", FormSignUpImageRoute()));
    menu17.subs.add(Menu.sub(1713, "Sign Up Image Card", FormSignUpImageCardRoute()));
    menu17.subs.add(Menu.sub(1714, "Sign Up Image Outline", FormSignUpImageOutlineRoute()));
    menus.add(menu17);

    Menu menu18 = Menu(1800, Icons.web_asset, "Toolbars");
    menu18.subs.add(Menu.sub(1801, "Basic", ToolbarBasicRoute()));
    menu18.subs.add(Menu.sub(1802, "Collapse", ToolbarCollapseRoute()));
    menu18.subs.add(Menu.sub(1803, "Collapse And Pin", ToolbarCollapseAndPinRoute()));
    menu18.subs.add(Menu.sub(1804, "Light", ToolbarLightRoute()));
    menu18.subs.add(Menu.sub(1805, "Dark", ToolbarDarkRoute()));
    menu18.subs.add(Menu.sub(1806, "Bottom Basic", ToolbarBottomBasicRoute()));
    menu18.subs.add(Menu.sub(1807, "Bottom Fab", ToolbarBottomFabRoute()));
    menu18.subs.add(Menu.sub(1808, "Bottom Scroll", ToolbarBottomScrollRoute()));
    menus.add(menu18);

    menus.add(Menu.divider());

    Menu menu19 = Menu(1900, Icons.person, "Profile");
    menu19.subs.add(Menu.sub(1901, "Polygon", ProfilePolygonRoute()));
    menu19.subs.add(Menu.sub(1902, "Purple", ProfilePurpleRoute()));
    menu19.subs.add(Menu.sub(1902, "Red", ProfileRedRoute()));
    menu19.subs.add(Menu.sub(1902, "Blue Appbar", ProfileBlueAppbarRoute()));
    menu19.subs.add(Menu.sub(1902, "Image Appbar", ProfileImageAppbarRoute()));
    menu19.subs.add(Menu.sub(1902, "Drawer Simple", ProfileDrawerSimpleRoute()));
    menu19.subs.add(Menu.sub(1902, "Drawer Image", ProfileDrawerImageRoute()));
    menus.add(menu19);

    Menu menu20 = Menu(2000, Icons.do_not_disturb_off, "No Item");
    menu20.subs.add(Menu.sub(2001, "Archived", NoitemArchivedRoute()));
    menu20.subs.add(Menu.sub(2002, "Search", NoitemSearchRoute()));
    menu20.subs.add(Menu.sub(2003, "Internet Icon", NoitemInternetIconRoute()));
    menu20.subs.add(Menu.sub(2004, "Internet Image", NoitemInternetImageRoute()));
    menu20.subs.add(Menu.sub(2005, "Bg City", NoitemBgCityRoute()));
    menu20.subs.add(Menu.sub(2006, "Bg Cactus", NoitemBgCactusRoute()));
    menus.add(menu20);

    Menu menu21 = Menu(2100, Icons.live_tv, "Player");
    menu21.subs.add(Menu.sub(2101, "Music Basic", PlayerMusicBasicRoute()));
    menu21.subs.add(Menu.sub(2102, "Music Light", PlayerMusicLightRoute()));
    menu21.subs.add(Menu.sub(2103, "Music Album Dark", PlayerMusicAlbumDarkRoute()));
    menu21.subs.add(Menu.sub(2104, "Music Album Circle", PlayerMusicAlbumCircleRoute()));
    menu21.subs.add(Menu.sub(2105, "Music Album Simple", PlayerMusicAlbumSimpleRoute()));
    menu21.subs.add(Menu.sub(2106, "Music Song List", PlayerMusicSongListRoute()));
    menus.add(menu21);

    Menu menu22 = Menu(2200, Icons.wrap_text, "Timeline");
    menu22.subs.add(Menu.sub(2201, "Feed", TimelineFeedRoute()));
    menu22.subs.add(Menu.sub(2202, "Path", TimelinePathRoute()));
    menu22.subs.add(Menu.sub(2203, "Dot Card", TimelineDotCardRoute()));
    menu22.subs.add(Menu.sub(2204, "Twitter", TimelineTwitterRoute()));
    menu22.subs.add(Menu.sub(2205, "Simple", TimelineSimpleRoute()));
    menu22.subs.add(Menu.sub(2206, "Explore", TimelineExploreRoute()));
    menus.add(menu22);

    Menu menu23 = Menu(2300, Icons.shopping_cart, "Shopping");
    menu23.subs.add(Menu.sub(2301, "Category List", ShoppingCategoryListRoute()));
    menu23.subs.add(Menu.sub(2302, "Category Card", ShoppingCategoryCardRoute()));
    menu23.subs.add(Menu.sub(2303, "Category Image", ShoppingCategoryImageRoute()));
    menu23.subs.add(Menu.sub(2304, "Sub Category Tabs", ShoppingSubCategoryTabsRoute()));
    menu23.subs.add(Menu.sub(2305, "Product Grid", ShoppingProductGridRoute()));
    menu23.subs.add(Menu.sub(2306, "Product Details", ShoppingProductDetailsRoute()));
    menus.add(menu23);

    Menu menu24 = Menu(2400, Icons.search, "Search");
    menu24.subs.add(Menu.sub(2401, "Toolbar Light", SearchToolbarLightRoute()));
    menu24.subs.add(Menu.sub(2402, "Toolbar Dark", SearchToolbarDarkRoute()));
    menu24.subs.add(Menu.sub(2403, "Store", SearchStoreRoute()));
    menu24.subs.add(Menu.sub(2404, "Primary", SearchPrimaryRoute()));
    menu24.subs.add(Menu.sub(2405, "Primary Bg", SearchPrimaryBgRoute()));
    menu24.subs.add(Menu.sub(2406, "City", SearchCityRoute()));
    menus.add(menu24);

    Menu menu25 = Menu(2500, Icons.photo_library, "Slider Image");
    menu25.subs.add(Menu.sub(2501, "Header", SliderImageHeaderRoute()));
    menu25.subs.add(Menu.sub(2502, "Header Auto", SliderImageHeaderAutoRoute()));
    menus.add(menu25);

    Menu menu26 = Menu(2600, Icons.settings, "Settings");
    menu26.subs.add(Menu.sub(2601, "Sectioned", SettingSectionedRoute()));
    menu26.subs.add(Menu.sub(2602, "Flat", SettingFlatRoute()));
    menu26.subs.add(Menu.sub(2603, "Profile", SettingProfileRoute()));
    menu26.subs.add(Menu.sub(2604, "Profile Light", SettingProfileLightRoute()));
    menus.add(menu26);

    Menu menu27 = Menu(2700, Icons.check_circle, "Verification");
    menu27.subs.add(Menu.sub(2701, "Phone", VerificationPhoneRoute()));
    menu27.subs.add(Menu.sub(2702, "Code", VerificationCodeRoute()));
    menu27.subs.add(Menu.sub(2703, "Header", VerificationHeaderRoute()));
    menu27.subs.add(Menu.sub(2704, "Image", VerificationImageRoute()));
    menu27.subs.add(Menu.sub(2705, "Blue", VerificationBlueRoute()));
    menu27.subs.add(Menu.sub(2706, "Orange", VerificationOrangeRoute()));
    menus.add(menu27);

    Menu menu28 = Menu(2800, Icons.https, "Login");
    menu28.subs.add(Menu.sub(2801, "Simple Light", LoginSimpleLightRoute()));
    menu28.subs.add(Menu.sub(2802, "Simple Dark", LoginSimpleDarkRoute()));
    menu28.subs.add(Menu.sub(2803, "Simple Green", LoginSimpleGreenRoute()));
    menu28.subs.add(Menu.sub(2804, "Image Teal", LoginImageTealRoute()));
    menu28.subs.add(Menu.sub(2805, "Card Light", LoginCardLightRoute()));
    menu28.subs.add(Menu.sub(2806, "Card Overlap", LoginCardOverlapRoute()));
    menus.add(menu28);

    Menu menu29 = Menu(2900, Icons.monetization_on, "Payment");
    menu29.subs.add(Menu.sub(2901, "Card Collections", PaymentCardCollectionsRoute()));
    menu29.subs.add(Menu.sub(2902, "Card Details", PaymentCardDetailsRoute()));
    menu29.subs.add(Menu.sub(2903, "Form", PaymentFormRoute()));
    menu29.subs.add(Menu.sub(2904, "Profile", PaymentProfileRoute()));
    menus.add(menu29);

    Menu menu30 = Menu(3000, Icons.event_seat, "Dashboard");
    menu30.subs.add(Menu.sub(3001, "Grid Fab", DashboardGridFabRoute()));
    menu30.subs.add(Menu.sub(3002, "Statistics", DashboardStatisticsRoute()));
    menu30.subs.add(Menu.sub(3003, "Pay Bill", DashboardPayBillRoute()));
    menu30.subs.add(Menu.sub(3004, "Flight", DashboardFlightRoute()));
    menu30.subs.add(Menu.sub(3005, "Wallet", DashboardWalletRoute()));
    menu30.subs.add(Menu.sub(3006, "Wallet Green", DashboardWalletGreenRoute()));
    menus.add(menu30);

    Menu menu31 = Menu(3100, Icons.subject, "Article");
    menu31.subs.add(Menu.sub(3101, "Simple", ArticleSimpleRoute()));
    menu31.subs.add(Menu.sub(3102, "Medium", ArticleMediumRoute()));
    menu31.subs.add(Menu.sub(3103, "Medium Dark", ArticleMediumDarkRoute()));
    menu31.subs.add(Menu.sub(3104, "Big Header", ArticleBigHeaderRoute()));
    menu31.subs.add(Menu.sub(3105, "Stepper", ArticleStepperRoute()));
    menu31.subs.add(Menu.sub(3106, "Card", ArticleCardRoute()));
    menu31.subs.add(Menu.sub(3107, "Food", ArticleFoodRoute()));
    menu31.subs.add(Menu.sub(3108, "Food Review", ArticleFoodReviewRoute()));
    menus.add(menu31);

    Menu menu32 = Menu(3200, Icons.perm_device_information, "About");
    menu32.subs.add(Menu.sub(3201, "App", AboutAppRoute()));
    menu32.subs.add(Menu.sub(3202, "App Simple", AboutAppSimpleRoute()));
    menu32.subs.add(Menu.sub(3203, "App Simple Blue", AboutAppSimpleBlueRoute()));
    menu32.subs.add(Menu.sub(3204, "Company", AboutCompanyRoute()));
    menu32.subs.add(Menu.sub(3205, "Company Image", AboutCompanyImageRoute()));
    menu32.subs.add(Menu.sub(3206, "Company Card", AboutCompanyCardRoute()));
    menus.add(menu32);

    Menu menu33 = Menu(3300, Icons.chat, "Chat");
    menu33.subs.add(Menu.sub(3301, "Telegram", ChatTelegramRoute()));
    menu33.subs.add(Menu.sub(3302, "WhatsApp", ChatWhatsAppRoute()));
    menu33.subs.add(Menu.sub(3303, "Facebook", ChatFacebookRoute()));
    menu33.subs.add(Menu.sub(3304, "BBM", ChatBBMRoute()));
    menus.add(menu33);

    menus.add(Menu.divider());
    menus.add(Menu.spacer());
  }

  Widget buildDrawer(){
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(20),
        color: MyColors.grey_95,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(height: 10),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  Img.get('logo_small_round.png'), color: MyColors.grey_20,
                  width: 60, height: 60
                ),
              ),
              Text("MaterialX Flutter", style: MyText.title(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
              Container(height: 5),
              Divider(color: Colors.white),
              buildMenuDrawer("Notification", (){

              }),
              buildMenuDrawer("Other Apps", (){
                Tools.directUrl("http://portfolio.dream-space.web.id/");
              }),
              buildMenuDrawer("Rate This App", (){
                Tools.directUrl("https://codecanyon.net/user/dream_space/portfolio");
              }),
              buildMenuDrawer("About", (){
                showDialog(context: context, builder: (_) => DialogAboutRoute());
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuDrawer(String title, Function onTap){
   return Material(
      color: Colors.transparent,
      child : InkWell(
        highlightColor: Colors.black.withOpacity(0.5),
        hoverColor: Colors.black.withOpacity(0.5),
        onTap: onTap as void Function()?,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          child: Text(title, style: MyText.subhead(context)!.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }

}