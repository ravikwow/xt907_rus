.class public abstract Lcom/android/settings/sdencryption/ChooserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field public mCb:Landroid/view/View$OnClickListener;

.field public mContext:Landroid/content/Context;

.field public final mCount:I

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mSelected:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/view/View$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mCb:Landroid/view/View$OnClickListener;

    .line 35
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput p3, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mCount:I

    .line 38
    iget v0, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mSelected:[Z

    .line 39
    return-void
.end method

.method private clearSelection()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mSelected:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mSelected:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private getDrawable(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 114
    const v0, 0x7f0200ca

    return v0
.end method

.method private updateModeView(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "id"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 86
    const v4, 0x7f080158

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "p":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v4, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mCb:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v4, 0x7f080159

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 91
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mSelected:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 93
    const v4, 0x7f08015e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v4, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mCb:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v4, 0x7f08015f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 98
    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/ChooserListAdapter;->getDrawable(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    const v4, 0x7f08015b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 102
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/ChooserListAdapter;->getTitle(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 104
    const v4, 0x7f08015c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tv":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 105
    .restart local v3    # "tv":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/ChooserListAdapter;->getDesc(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    return-object p2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mCount:I

    return v0
.end method

.method public abstract getDesc(I)I
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getTitle(I)I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-eqz p2, :cond_0

    const v1, 0x7f080159

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/sdencryption/ChooserListAdapter;->updateModeView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 59
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sdencryption/ChooserListAdapter;->updateModeView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public setSelected(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/sdencryption/ChooserListAdapter;->clearSelection()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListAdapter;->mSelected:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/ChooserListAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method
