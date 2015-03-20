.class public Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mAllAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

.field private static mLocationOnlyAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mAllAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    .line 49
    sput-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mLocationOnlyAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const v0, 0x1090003

    const v1, 0x1020014

    invoke-static {p2, p1, p3}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 74
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;>;"
    new-instance v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;I)V

    .line 110
    .local v0, "temp":Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public static clearAdapters()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mAllAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    .line 69
    sput-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mLocationOnlyAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    .line 70
    return-void
.end method

.method public static getAdapter(Landroid/content/Context;ILandroid/os/Bundle;)Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    sget-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mAllAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    sput-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mAllAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    .line 57
    :cond_0
    sget-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mAllAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mLocationOnlyAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    sput-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mLocationOnlyAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    .line 62
    :cond_1
    sget-object v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->mLocationOnlyAdapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static getData(ILandroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p0, "mode"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f0b00db

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;>;"
    packed-switch p0, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    const v1, 0x7f0b00d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 86
    const v1, 0x7f0b00d6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 87
    const v1, 0x7f0b00d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 88
    const v1, 0x7f0b00d8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 89
    const v1, 0x7f0b00d9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 90
    const v1, 0x7f0b00da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 91
    const v1, 0x7f0b003c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 93
    if-eqz p2, :cond_1

    const-string v1, "com.motorola.contextual.location.ils.IlsShareLocation"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_1
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 96
    :cond_2
    if-eqz p2, :cond_3

    const-string v1, "motorola.intent.action.PICK"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :cond_3
    const v1, 0x7f0b00dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .param p1, "whichButton"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;

    .line 78
    .local v0, "item":Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;
    invoke-virtual {v0}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method
