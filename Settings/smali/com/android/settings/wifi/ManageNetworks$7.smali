.class Lcom/android/settings/wifi/ManageNetworks$7;
.super Ljava/lang/Object;
.source "ManageNetworks.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/ManageNetworks;->orderOnPriority(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$7;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/wifi/AccessPoint;Lcom/android/settings/wifi/AccessPoint;)I
    .locals 2
    .param p1, "ap1"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "ap2"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 879
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 877
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/ManageNetworks$7;->compare(Lcom/android/settings/wifi/AccessPoint;Lcom/android/settings/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method
