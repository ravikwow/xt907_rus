.class public Lcom/android/alarmclock/DigitalWidgetViewsFactory;
.super Ljava/lang/Object;
.source "DigitalWidgetViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    .line 46
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    .line 46
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    .line 136
    iput-object p1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mResources:Landroid/content/res/Resources;

    .line 138
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    .line 140
    new-instance v0, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;-><init>(Lcom/android/alarmclock/DigitalWidgetViewsFactory;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/alarmclock/DigitalWidgetViewsFactory;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    iget v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/WidgetUtils;->showList(Landroid/content/Context;IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->getCount()I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 157
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    invoke-virtual {v2, p1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 168
    .local v1, "v":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_0

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, "fillInIntent":Landroid/content/Intent;
    const v2, 0x7f0e009a

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 172
    .end local v0    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadData(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->loadCitiesDb(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mAdapter:Lcom/android/alarmclock/DigitalWidgetViewsFactory$RemoteWorldClockAdapter;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdapter;->updateHomeLabel(Landroid/content/Context;)V

    .line 198
    iget-object v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mId:I

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;->mFontScale:F

    .line 199
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method
