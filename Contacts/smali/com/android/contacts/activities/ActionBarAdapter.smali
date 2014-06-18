.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$1;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActionBarNavigationMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private final mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowHomeIcon:Z

.field private mShowTabsAsText:Z

.field private final mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .param p3, "actionBar"    # Landroid/app/ActionBar;
    .param p4, "isUsingTwoPanes"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 128
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 130
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 131
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 133
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0010

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    .line 137
    if-nez p4, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0023

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    .line 140
    if-eqz p4, :cond_3

    .line 141
    iput v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 142
    iput-object v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 143
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-direct {v3, p0, v7}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 151
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f040033

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "customSearchView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f08003a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 155
    .local v2, "searchViewWidth":I
    if-nez v2, :cond_1

    .line 156
    const/4 v2, -0x1

    .line 158
    :cond_1
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 159
    .local v1, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    const v3, 0x7f060089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 165
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 166
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0b01a7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 169
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 170
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 173
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_2
    return-void

    .end local v0    # "customSearchView":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/app/ActionBar$LayoutParams;
    .end local v2    # "searchViewWidth":I
    :cond_2
    move v3, v4

    .line 137
    goto :goto_0

    .line 145
    :cond_3
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 146
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-direct {v3, p0, v7}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 147
    iput-object v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_1

    .line 175
    .restart local v0    # "customSearchView":Landroid/view/View;
    .restart local v1    # "layoutParams":Landroid/app/ActionBar$LayoutParams;
    .restart local v2    # "searchViewWidth":I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs()V

    goto :goto_2

    .line 178
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupNavigationList()V

    goto :goto_2

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ActionBarAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v0

    return v0
.end method

.method private addTab(III)V
    .locals 3
    .param p1, "expectedTabIndex"    # I
    .param p2, "icon"    # I
    .param p3, "description"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 261
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 262
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 269
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 270
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tabs must be created in the right order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 266
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 272
    :cond_1
    return-void
.end method

.method private getNavigationItemPositionFromTabPosition(I)I
    .locals 4
    .param p1, "tabPos"    # I

    .prologue
    const/4 v0, 0x2

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :pswitch_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    :pswitch_1
    return v0

    .line 224
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getTabPositionFromNavigationItemPosition(I)I
    .locals 4
    .param p1, "navItemPos"    # I

    .prologue
    const/4 v0, 0x2

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    .line 209
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadLastTabPreference()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "actionBarAdapter.lastTab"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 541
    :goto_0
    return v1

    .line 539
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private saveLastTabPreference(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    return-void
.end method

.method private setupNavigationList()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040073

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/content/Context;I)V

    .line 192
    .local v0, "navAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 196
    return-void
.end method

.method private setupTabs()V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    const v1, 0x7f020067

    const v2, 0x7f0b006f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 185
    const/4 v0, 0x1

    const v1, 0x7f020065

    const v2, 0x7f0b006e

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 186
    const/4 v0, 0x2

    const v1, 0x7f020069

    const v2, 0x7f0b0070

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(III)V

    .line 187
    return-void
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 415
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->isIconified()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 416
    .local v1, "isIconifiedChanging":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v4, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 421
    if-eqz v1, :cond_0

    .line 422
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 424
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v3, :cond_2

    .line 428
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v3, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 465
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 466
    return-void

    .end local v1    # "isIconifiedChanging":Z
    :cond_3
    move v1, v3

    .line 415
    goto :goto_0

    .line 431
    .restart local v1    # "isIconifiedChanging":Z
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    .line 432
    .local v0, "currentNavigationMode":I
    iget v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v4, v6, :cond_7

    if-eq v0, v6, :cond_7

    .line 442
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v2, v4, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 443
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 444
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 445
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v3, v2, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 454
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    if-eqz v1, :cond_6

    .line 458
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 460
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v2, v6}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 462
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_1

    .line 446
    :cond_7
    iget v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v4, v2, :cond_5

    if-eq v0, v2, :cond_5

    .line 448
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v2, v4, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    .line 449
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 450
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 452
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v3, v2, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    goto :goto_2
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 389
    const/16 v0, 0x1e

    .line 393
    .local v0, "MASK":I
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 396
    .local v1, "current":I
    const/4 v2, 0x0

    .line 397
    .local v2, "newFlags":I
    or-int/lit8 v2, v2, 0x8

    .line 398
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    .line 399
    or-int/lit8 v2, v2, 0x2

    .line 401
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_1

    .line 402
    or-int/lit8 v2, v2, 0x2

    .line 403
    or-int/lit8 v2, v2, 0x4

    .line 404
    or-int/lit8 v2, v2, 0x10

    .line 406
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 408
    if-eq v1, v2, :cond_2

    .line 410
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 412
    :cond_2
    return-void
.end method


# virtual methods
.method public clearFocusOnSearchView()V
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 525
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 234
    if-nez p1, :cond_1

    .line 235
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 236
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 250
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void

    .line 239
    :cond_1
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 240
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 243
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 506
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 473
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    :goto_0
    return v0

    .line 476
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 477
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v2, :cond_2

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_1
    :goto_1
    move v0, v1

    .line 485
    goto :goto_0

    .line 481
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v2, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 495
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 500
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 510
    const-string v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    const-string v0, "navBar.query"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "navBar.selectedTab"

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 308
    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 3
    .param p1, "tab"    # I
    .param p2, "notifyListener"    # Z

    .prologue
    .line 314
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne p1, v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 317
    :cond_0
    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 319
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 320
    .local v0, "actionBarSelectedNavIndex":I
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 335
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 336
    :cond_2
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0

    .line 322
    :pswitch_0
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-eq v1, v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 327
    :pswitch_1
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 529
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 530
    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 257
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 355
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 356
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 357
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 365
    :cond_3
    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0
.end method
