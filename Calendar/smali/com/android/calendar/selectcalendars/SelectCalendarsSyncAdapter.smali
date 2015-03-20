.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSyncAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static COLOR_CHIP_SIZE:I


# instance fields
.field private mChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation
.end field

.field private mColorColumn:I

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameColumn:I

.field private final mNonSyncable:Ljava/lang/String;

.field private final mNotSyncedString:Ljava/lang/String;

.field private final mPhoneCalendarString:Ljava/lang/String;

.field private mRowCount:I

.field private mSyncedColumn:I

.field private final mSyncedString:Ljava/lang/String;

.field private mTypeColumn:I

.field private r:Landroid/graphics/drawable/shapes/RectShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x1e

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 83
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 84
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    .line 86
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    sget v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 89
    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .line 91
    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mPhoneCalendarString:Ljava/lang/String;

    .line 92
    const v1, 0x7f0c00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNonSyncable:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 98
    iput v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 99
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 132
    :cond_0
    return-void

    .line 103
    :cond_1
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    .line 105
    const-string v3, "account_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mTypeColumn:I

    .line 107
    const-string v3, "calendar_displayName"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    .line 108
    const-string v3, "calendar_color"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    .line 109
    const-string v3, "sync_events"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 112
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    new-array v3, v3, [Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 113
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "p":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 117
    .local v0, "id":J
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    new-instance v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    invoke-direct {v5, p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;)V

    aput-object v5, v3, v2

    .line 118
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iput-wide v0, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 120
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mTypeColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    .line 124
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v3, v2

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    .line 125
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v3, v2

    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iget-boolean v3, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iput-boolean v3, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 130
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 131
    goto :goto_0

    :cond_2
    move v3, v4

    .line 124
    goto :goto_1

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    iput-boolean v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    goto :goto_2
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method

.method public getChanges()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 199
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 203
    .local v0, "item":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 208
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 209
    const-wide/16 v0, 0x0

    .line 211
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f100031

    const v10, 0x7f100032

    .line 141
    iget v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v7, :cond_0

    .line 142
    const/4 v6, 0x0

    .line 181
    :goto_0
    return-object v6

    .line 145
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget-object v0, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->accountType:Ljava/lang/String;

    .line 147
    .local v0, "accountType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget-object v4, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 148
    .local v4, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget-boolean v5, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 149
    .local v5, "selected":Z
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    invoke-static {v7}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v2

    .line 151
    .local v2, "color":I
    if-nez p2, :cond_1

    .line 152
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040012

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 157
    .local v6, "view":Landroid/view/View;
    :goto_1
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    const v7, 0x7f100033

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 160
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 162
    if-eqz v5, :cond_2

    .line 163
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 168
    :goto_2
    const v7, 0x7f100030

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 170
    .local v3, "colorView":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    const-string v7, "LOCAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mPhoneCalendarString:Ljava/lang/String;

    invoke-static {v6, v11, v7}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 175
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNonSyncable:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v3    # "colorView":Landroid/view/View;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    move-object v6, p2

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_1

    .line 165
    .restart local v1    # "cb":Landroid/widget/CheckBox;
    :cond_2
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 178
    .restart local v3    # "colorView":Landroid/view/View;
    :cond_3
    invoke-static {v6, v11, v4}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 225
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 226
    .local v1, "row":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 229
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v3, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 234
    .local v2, "status":Ljava/lang/String;
    :goto_1
    const v3, 0x7f100032

    invoke-static {p2, v3, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 236
    const v3, 0x7f100033

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 237
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 241
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void

    .line 226
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .restart local v2    # "status":Ljava/lang/String;
    goto :goto_1
.end method
