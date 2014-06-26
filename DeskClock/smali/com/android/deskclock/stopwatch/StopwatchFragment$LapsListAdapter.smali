.class Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LapsListAdapter"
.end annotation


# instance fields
.field private final mBackgroundColor:I

.field private final mFormats:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLapFormat:Ljava/lang/String;

.field private final mLapFormatSet:[Ljava/lang/String;

.field private mLapIndex:I

.field mLaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;",
            ">;"
        }
    .end annotation
.end field

.field private final mThresholds:[J

.field private mTotalIndex:I

.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    .line 109
    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    .line 110
    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    .line 114
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mBackgroundColor:I

    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mFormats:[Ljava/lang/String;

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormatSet:[Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    .line 119
    return-void

    .line 102
    :array_0
    .array-data 8
        0x927c0
        0x36ee80
        0x2255100
        0x15752a00
        0xd693a400L
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    return-void
.end method

.method private resetTimeFormats()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    .line 174
    return-void
.end method

.method private updateLapFormat()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormatSet:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormat:Ljava/lang/String;

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V
    .locals 2
    .param p1, "l"    # Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    return-void
.end method

.method public clearLaps()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    .line 207
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->resetTimeFormats()V

    .line 208
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 209
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLapTimes()[J
    .locals 5

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 214
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 215
    const/4 v1, 0x0

    .line 221
    :cond_0
    return-object v1

    .line 217
    :cond_1
    new-array v1, v2, [J

    .line 218
    .local v1, "laps":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 219
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-wide v3, v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    aput-wide v3, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 144
    :goto_0
    return-object v2

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v1

    .line 133
    .local v1, "lap":Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    if-eqz p2, :cond_2

    .line 134
    move-object v2, p2

    .line 139
    .local v2, "lapInfo":Landroid/view/View;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    const v3, 0x7f0e0049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    .local v0, "count":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapFormat:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0, v2, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->setTimeText(Landroid/view/View;Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    goto :goto_0

    .line 136
    .end local v0    # "count":Landroid/widget/TextView;
    .end local v2    # "lapInfo":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04001c

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 137
    .restart local v2    # "lapInfo":Landroid/view/View;
    iget v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setLapTimes([J)V
    .locals 14
    .param p1, "laps"    # [J

    .prologue
    .line 226
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    array-length v10, p1

    .line 231
    .local v10, "size":I
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    move-object v6, p1

    .local v6, "arr$":[J
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-wide v2, v6, v8

    .line 233
    .local v2, "lap":J
    iget-object v13, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 235
    .end local v2    # "lap":J
    :cond_2
    const-wide/16 v11, 0x0

    .line 236
    .local v11, "totalTime":J
    add-int/lit8 v7, v10, -0x1

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_3

    .line 237
    aget-wide v0, p1, v7

    add-long/2addr v11, v0

    .line 238
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iput-wide v11, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z

    .line 236
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V

    .line 242
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 243
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected setTimeText(Landroid/view/View;Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V
    .locals 6
    .param p1, "lapInfo"    # Landroid/view/View;
    .param p2, "lap"    # Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    .prologue
    .line 148
    const v2, 0x7f0e004a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    .local v0, "lapTime":Landroid/widget/TextView;
    const v2, 0x7f0e004b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, "totalTime":Landroid/widget/TextView;
    iget-wide v2, p2, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mFormats:[Ljava/lang/String;

    iget v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/deskclock/stopwatch/Stopwatches;->formatTimeText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-wide v2, p2, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mFormats:[Ljava/lang/String;

    iget v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/deskclock/stopwatch/Stopwatches;->formatTimeText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z
    .locals 5
    .param p1, "lap"    # Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "formatChanged":Z
    :goto_0
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-wide v1, p1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    aget-wide v3, v3, v4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 188
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mLapIndex:I

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-wide v1, p1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mThresholds:[J

    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    aget-wide v3, v3, v4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 193
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->mTotalIndex:I

    .line 194
    const/4 v0, 0x1

    goto :goto_1

    .line 196
    :cond_1
    return v0
.end method
