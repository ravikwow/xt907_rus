.class public Lcom/android/contacts/list/CustomContactListFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactsActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# static fields
.field private static mProgress:Landroid/app/ProgressDialog;

.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

.field private mDialog:Landroid/app/AlertDialog;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 882
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/CustomContactListFilterActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    return-object v0
.end method

.method static synthetic access$600()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 77
    sput-object p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 862
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    # getter for: Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    .line 876
    :goto_0
    return-void

    .line 867
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    .line 869
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    # getter for: Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 870
    .local v0, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 871
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 875
    :cond_2
    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .prologue
    .line 756
    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x2

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .param p2, "child"    # Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .param p3, "syncMode"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 808
    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    .line 809
    .local v2, "shouldSyncUngrouped":Z
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 812
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 813
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0114

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "removeMessage":Ljava/lang/CharSequence;
    const v3, 0x7f0b010f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 816
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 817
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$3;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 827
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDialog:Landroid/app/AlertDialog;

    .line 828
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 835
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "removeMessage":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual {p1, p2, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 833
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 734
    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 736
    .local v1, "checkbox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 737
    .local v0, "account":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 738
    .local v2, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 740
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    .line 745
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 743
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 717
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    goto :goto_0

    .line 721
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 715
    :sswitch_data_0
    .sparse-switch
        0x7f060059 -> :sswitch_0
        0x7f060085 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 99
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f040025

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setContentView(I)V

    .line 102
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    .line 103
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    new-instance v2, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f060059

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v2, 0x7f060085

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 115
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 766
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 769
    instance-of v6, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez v6, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    .line 771
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 772
    .local v4, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 773
    .local v3, "groupPosition":I
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 776
    .local v2, "childPosition":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 778
    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 779
    .local v0, "account":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 782
    .local v1, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I

    move-result v5

    .line 783
    .local v5, "syncMode":I
    if-eqz v5, :cond_0

    .line 785
    if-eqz v1, :cond_2

    .line 786
    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 233
    sput-object v1, Lcom/android/contacts/list/CustomContactListFilterActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mDialog:Landroid/app/AlertDialog;

    .line 241
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 242
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .param p2, "data"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 253
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 258
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 947
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 956
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 950
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    .line 951
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    .line 952
    const/4 v0, 0x1

    goto :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 225
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 226
    return-void
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "syncMode"    # I

    .prologue
    .line 838
    const v3, 0x7f0b0110

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 841
    iget-object v3, p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 842
    .local v0, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    invoke-virtual {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 844
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$4;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$4;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 858
    .end local v0    # "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "child"    # Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .param p4, "syncMode"    # I

    .prologue
    .line 794
    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 796
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 797
    const v0, 0x7f0b010f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$2;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 804
    return-void
.end method
