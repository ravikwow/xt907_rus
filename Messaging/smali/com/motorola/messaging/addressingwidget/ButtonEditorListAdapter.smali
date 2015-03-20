.class public Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ButtonEditorListAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressesAndLabelsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

.field private mId:J

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$3;

    invoke-direct {v0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$3;-><init>()V

    sput-object v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    .line 32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    .line 36
    new-instance v2, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;-><init>(Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;)V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    .line 44
    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasOnlineAlbumAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    .line 46
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mId:J

    .line 67
    return-void

    .line 49
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasFixedDialNumber()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasLocalNumber()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    .line 51
    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getAddresses()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 57
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getId()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/motorola/messaging/contact/ContactUtils;->getAddressesAndLabels(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    .line 58
    invoke-virtual {p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getAddresses()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .restart local v0    # "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    .end local v0    # "address":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->removeAmbiguous()V

    .line 62
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .restart local v0    # "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->removeNetworkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    .line 36
    new-instance v0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;-><init>(Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;)V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mId:J

    .line 99
    return-void
.end method

.method private removeAmbiguous()V
    .locals 9

    .prologue
    .line 70
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v5, "resolvedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    iget-object v8, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "address":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "addAddress":Z
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    .local v4, "resolvedAddress":Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "unformattedAddress":Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "unformattedResolveAddress":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 85
    .end local v4    # "resolvedAddress":Ljava/lang/String;
    .end local v6    # "unformattedAddress":Ljava/lang/String;
    .end local v7    # "unformattedResolveAddress":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    .line 86
    iget-object v8, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v0    # "addAddress":Z
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iput-object v5, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonId()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mId:J

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
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

.method public getSelectedAddresses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 134
    if-nez p2, :cond_2

    .line 135
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030006

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    new-instance v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;-><init>(Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$1;)V

    .line 141
    .local v1, "holder":Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;
    const v3, 0x7f090014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 142
    iget-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mDummyCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v3, 0x7f090015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->address:Landroid/widget/TextView;

    .line 144
    const v3, 0x7f090016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->addressLabel:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "address":Ljava/lang/String;
    iget-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    iget-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 155
    iget-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$2;-><init>(Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    iget-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 166
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_1
    iget-object v3, v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;->addressLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object p2

    .line 147
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "holder":Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public toogleCheck(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 129
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddressesAndLabelsMap:Ljava/util/Map;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 186
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mAddresses:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 187
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mSelectedAddresses:Ljava/util/Set;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 188
    iget-wide v0, p0, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    return-void
.end method
