.class public Lcom/android/settings/sdencryption/ChooserListView;
.super Landroid/widget/ListView;
.source "ChooserListView.java"


# instance fields
.field mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

.field mApp:Landroid/view/View$OnClickListener;

.field mCallback:Landroid/view/View$OnClickListener;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    .line 25
    new-instance v0, Lcom/android/settings/sdencryption/ChooserListView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/ChooserListView$1;-><init>(Lcom/android/settings/sdencryption/ChooserListView;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mCallback:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/android/settings/sdencryption/ChooserListView;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    .line 25
    new-instance v0, Lcom/android/settings/sdencryption/ChooserListView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/ChooserListView$1;-><init>(Lcom/android/settings/sdencryption/ChooserListView;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mCallback:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/android/settings/sdencryption/ChooserListView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    .line 25
    new-instance v0, Lcom/android/settings/sdencryption/ChooserListView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/ChooserListView$1;-><init>(Lcom/android/settings/sdencryption/ChooserListView;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mCallback:Landroid/view/View$OnClickListener;

    .line 46
    iput-object p1, p0, Lcom/android/settings/sdencryption/ChooserListView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public commonInit()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/android/settings/sdencryption/ChooserAdapterMemEncryptionKeyType;

    iget-object v1, p0, Lcom/android/settings/sdencryption/ChooserListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sdencryption/ChooserListView;->mCallback:Landroid/view/View$OnClickListener;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/sdencryption/ChooserAdapterMemEncryptionKeyType;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    .line 52
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/ChooserListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public setClickCallback(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/sdencryption/ChooserListView;->mApp:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView;->mAdapter:Lcom/android/settings/sdencryption/ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/sdencryption/ChooserListAdapter;->setSelected(I)V

    .line 60
    :cond_0
    return-void
.end method
