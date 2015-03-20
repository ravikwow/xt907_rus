.class public Lcom/android/calendar/alerts/QuickResponseActivity;
.super Landroid/app/ListActivity;
.source "QuickResponseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;
    }
.end annotation


# static fields
.field static mEventId:J


# instance fields
.field private mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, -0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v3, "eventId"

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    .line 59
    sget-wide v3, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    invoke-static {p0}, Lcom/android/calendar/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "responses":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 72
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 79
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f04002e

    iget-object v5, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 87
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v0, v1, p3

    .line 92
    :cond_0
    new-instance v1, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;

    sget-wide v2, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;-><init>(Lcom/android/calendar/alerts/QuickResponseActivity;JLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method
