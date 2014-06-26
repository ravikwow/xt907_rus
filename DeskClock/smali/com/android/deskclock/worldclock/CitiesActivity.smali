.class public Lcom/android/deskclock/worldclock/CitiesActivity;
.super Landroid/app/Activity;
.source "CitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

.field private mCalendar:Ljava/util/Calendar;

.field private mCitiesList:Landroid/widget/ListView;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mPosition:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryTextBuffer:Ljava/lang/StringBuffer;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedCitiesHeaderString:Ljava/lang/String;

.field private mSortType:I

.field private mUserSelectedCities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/worldclock/CityObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSelectedCitiesHeaderString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/deskclock/worldclock/CitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/worldclock/CitiesActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/deskclock/worldclock/CitiesActivity;)Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/deskclock/worldclock/CitiesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/deskclock/worldclock/CitiesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/deskclock/worldclock/CitiesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/deskclock/worldclock/CitiesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/deskclock/worldclock/CitiesActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    return-object v0
.end method

.method private setFastScroll(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 500
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 480
    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 481
    const v1, 0x7f0e002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    .line 482
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->setFastScroll(Z)V

    .line 483
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    .line 484
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 485
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/worldclock/Cities;->readCitiesFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    .line 487
    new-instance v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    .line 488
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 489
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 490
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 493
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "b"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/worldclock/CityObj;

    .line 603
    .local v0, "c":Lcom/android/deskclock/worldclock/CityObj;
    if-eqz p2, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 612
    const v2, 0x7f0e002c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 613
    .local v0, "b":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 614
    .local v1, "checked":Z
    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 615
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 616
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v2}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->refreshSelectedCities()V

    .line 617
    return-void

    .line 615
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 459
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    .line 460
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 461
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sort_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I

    .line 462
    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSelectedCitiesHeaderString:Ljava/lang/String;

    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    const-string v1, "search_query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const-string v0, "search_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchMode:Z

    .line 466
    const-string v0, "list_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitiesActivity;->updateLayout()V

    .line 469
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 554
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f110001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 555
    const v2, 0x7f0e00a7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 556
    .local v0, "help":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 557
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 560
    :cond_0
    const v2, 0x7f0e00a4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 561
    .local v1, "searchMenu":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    .line 562
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 563
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/deskclock/worldclock/CitiesActivity$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/worldclock/CitiesActivity$1;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/deskclock/worldclock/CitiesActivity$2;

    invoke-direct {v3, p0}, Lcom/android/deskclock/worldclock/CitiesActivity$2;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 578
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 580
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 581
    iget-boolean v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchMode:Z

    if-eqz v2, :cond_1

    .line 582
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 583
    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 586
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 549
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 523
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 526
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    goto :goto_0

    .line 536
    :sswitch_2
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->toggleSort()V

    .line 538
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->setFastScroll(Z)V

    goto :goto_0

    .line 542
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    const v2, 0x4008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0e00a5 -> :sswitch_2
        0x7f0e00a6 -> :sswitch_0
        0x7f0e00a7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 513
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mUserSelectedCities:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/android/deskclock/worldclock/Cities;->saveCitiesToSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/HashMap;)V

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 591
    const v1, 0x7f0e00a5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 592
    .local v0, "sortMenuItem":Landroid/view/MenuItem;
    iget v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I

    if-nez v1, :cond_0

    .line 593
    const v1, 0x7f0d0054

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 597
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 595
    :cond_0
    const v1, 0x7f0d0055

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 622
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 505
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mAdapter:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 508
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 474
    const-string v0, "search_query"

    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mQueryTextBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "search_mode"

    iget-boolean v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    const-string v0, "list_position"

    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    return-void
.end method
