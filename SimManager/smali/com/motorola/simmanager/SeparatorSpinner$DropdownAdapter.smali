.class Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;
.super Ljava/lang/Object;
.source "SeparatorSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/SeparatorSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownAdapter"
.end annotation


# instance fields
.field private mDropdownAdapter:Landroid/widget/SpinnerAdapter;

.field final synthetic this$0:Lcom/motorola/simmanager/SeparatorSpinner;


# direct methods
.method public constructor <init>(Lcom/motorola/simmanager/SeparatorSpinner;Landroid/widget/SpinnerAdapter;)V
    .locals 0
    .param p2, "adap"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->this$0:Lcom/motorola/simmanager/SeparatorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    .line 91
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->this$0:Lcom/motorola/simmanager/SeparatorSpinner;

    invoke-virtual {v0}, Lcom/motorola/simmanager/SeparatorSpinner;->getDropdownAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->this$0:Lcom/motorola/simmanager/SeparatorSpinner;

    invoke-virtual {v0}, Lcom/motorola/simmanager/SeparatorSpinner;->getDropdownAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;->mDropdownAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    :cond_0
    return-void
.end method
