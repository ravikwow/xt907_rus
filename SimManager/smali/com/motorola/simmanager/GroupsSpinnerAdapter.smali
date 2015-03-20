.class public Lcom/motorola/simmanager/GroupsSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    }
.end annotation


# instance fields
.field private mGroups:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groups"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mGroups:[Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mGroups:[Ljava/lang/String;

    .line 41
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mGroups:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;

    .end local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    invoke-direct {v0}, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;-><init>()V

    .line 70
    .restart local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    iget-object v1, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    const v1, 0x7f090008

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;->groupName:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    iget-object v1, v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;->groupName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mGroups:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object p2

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    check-cast v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;

    .restart local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    if-nez p2, :cond_0

    .line 132
    new-instance v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;

    .end local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    invoke-direct {v0}, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;-><init>()V

    .line 134
    .restart local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    iget-object v1, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    const v1, 0x7f090009

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;->groupName:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    :goto_0
    iget-object v1, v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;->groupName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mGroups:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object p2

    .line 142
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    check-cast v0, Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;

    .restart local v0    # "holder":Lcom/motorola/simmanager/GroupsSpinnerAdapter$BodyViewHolder;
    goto :goto_0
.end method

.method setGroupsInfo([Ljava/lang/String;)V
    .locals 1
    .param p1, "groups"    # [Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->mGroups:[Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
