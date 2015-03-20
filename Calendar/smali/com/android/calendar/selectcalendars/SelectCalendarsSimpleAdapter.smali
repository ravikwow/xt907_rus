.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSimpleAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static BOTTOM_ITEM_HEIGHT:I

.field private static COLOR_CHIP_LEFT_MARGIN:I

.field private static COLOR_CHIP_RIGHT_MARGIN:I

.field private static COLOR_CHIP_TOP_OFFSET:I

.field private static NORMAL_ITEM_HEIGHT:I

.field private static SELECTED_COLOR_CHIP_SIZE:I

.field private static UNSELECTED_COLOR_CHIP_SIZE:I

.field private static mScale:F


# instance fields
.field private mColorCalendarHidden:I

.field private mColorCalendarSecondaryHidden:I

.field private mColorCalendarSecondaryVisible:I

.field private mColorCalendarVisible:I

.field private mColorColumn:I

.field private mCursor:Landroid/database/Cursor;

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I

.field private mNameColumn:I

.field private mOrientation:I

.field private mOwnerAccountColumn:I

.field private final mPhoneCalendarStr:Ljava/lang/String;

.field private final mPhoneStorageStr:Ljava/lang/String;

.field mRes:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mTypeColumn:I

.field private mVisibleColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 46
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 48
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 49
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 50
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 51
    const/16 v0, 0x30

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 99
    iput p2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    .line 101
    invoke-direct {p0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 102
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    .line 104
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    .line 105
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    .line 106
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 107
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .line 109
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 111
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 112
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 113
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 114
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 115
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 116
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 117
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mPhoneCalendarStr:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mPhoneStorageStr:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 176
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_0
    if-nez p1, :cond_2

    .line 180
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 181
    iput v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 182
    iput-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 212
    :cond_1
    return-void

    .line 186
    :cond_2
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 187
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    .line 189
    const-string v1, "account_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mTypeColumn:I

    .line 191
    const-string v1, "calendar_displayName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    .line 192
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    .line 193
    const-string v1, "visible"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    .line 194
    const-string v1, "ownerAccount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 197
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 198
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "p":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    new-instance v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    invoke-direct {v3, p0, v5}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;)V

    aput-object v3, v1, v0

    .line 202
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    .line 204
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mTypeColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    .line 208
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v3, v1, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 209
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 208
    goto :goto_1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 216
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 217
    return-void
.end method

.method protected getBackground(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 333
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 334
    .local v0, "bg":I
    :goto_0
    if-nez p1, :cond_2

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    if-ne v3, v1, :cond_2

    :goto_1
    or-int/2addr v0, v1

    .line 335
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v0, v1

    .line 336
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    or-int/2addr v0, v2

    .line 337
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->getBackgrounds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .end local v0    # "bg":I
    :cond_1
    move v0, v2

    .line 333
    goto :goto_0

    .restart local v0    # "bg":I
    :cond_2
    move v1, v2

    .line 334
    goto :goto_1

    :cond_3
    move v1, v2

    .line 335
    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 345
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 349
    .local v0, "item":Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 353
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 354
    const-wide/16 v0, 0x0

    .line 356
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 221
    const/16 v19, 0x0

    .line 323
    :goto_0
    return-object v19

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 226
    .local v4, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 227
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    move/from16 v16, v0

    .line 229
    .local v16, "selected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v7

    .line 231
    .local v7, "color":I
    if-nez p2, :cond_2

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 237
    .local v19, "view":Landroid/view/View;
    :goto_1
    const v21, 0x7f100031

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 239
    .local v6, "calendarName":Landroid/widget/TextView;
    const-string v21, "LOCAL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 240
    .local v9, "isLocalAccount":Z
    if-eqz v9, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mPhoneCalendarStr:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_2
    const v21, 0x7f100030

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 248
    .local v8, "colorView":Landroid/view/View;
    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    const v21, 0x7f100033

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    .line 251
    .local v17, "syncCheckBox":Landroid/widget/CheckBox;
    if-eqz v17, :cond_8

    .line 253
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 256
    if-eqz v16, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    move/from16 v18, v0

    .line 261
    .local v18, "textColor":I
    :goto_3
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 264
    .local v10, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    const v21, 0x7f100032

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 265
    .local v15, "secondaryText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "calendar.google.com"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 269
    if-eqz v16, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 275
    .local v14, "secondaryColor":I
    :goto_4
    if-eqz v9, :cond_6

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mPhoneStorageStr:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :goto_5
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    .end local v14    # "secondaryColor":I
    :goto_6
    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .end local v10    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "secondaryText":Landroid/widget/TextView;
    .end local v18    # "textColor":I
    :cond_1
    :goto_7
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 234
    .end local v6    # "calendarName":Landroid/widget/TextView;
    .end local v8    # "colorView":Landroid/view/View;
    .end local v9    # "isLocalAccount":Z
    .end local v17    # "syncCheckBox":Landroid/widget/CheckBox;
    .end local v19    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v19, p2

    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 243
    .restart local v6    # "calendarName":Landroid/widget/TextView;
    .restart local v9    # "isLocalAccount":Z
    :cond_3
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 259
    .restart local v8    # "colorView":Landroid/view/View;
    .restart local v17    # "syncCheckBox":Landroid/widget/CheckBox;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    move/from16 v18, v0

    .restart local v18    # "textColor":I
    goto/16 :goto_3

    .line 272
    .restart local v10    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "secondaryText":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .restart local v14    # "secondaryColor":I
    goto :goto_4

    .line 278
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 285
    .end local v14    # "secondaryColor":I
    :cond_7
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    .line 293
    .end local v10    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "secondaryText":Landroid/widget/TextView;
    .end local v18    # "textColor":I
    :cond_8
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v22, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v13, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 296
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 299
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 300
    if-nez v16, :cond_9

    .line 301
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v23, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 304
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v23, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 306
    :cond_9
    invoke-virtual {v8, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getBackground(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 309
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 311
    .local v12, "newParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 312
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 316
    :goto_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const v21, 0x7f1000a7

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    .line 318
    .local v20, "visibleCheckBox":Landroid/widget/CheckBox;
    if-eqz v20, :cond_1

    .line 319
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 314
    .end local v20    # "visibleCheckBox":Landroid/widget/CheckBox;
    :cond_a
    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8
.end method

.method public getVisible(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public setVisible(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "visible"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 361
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 362
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
