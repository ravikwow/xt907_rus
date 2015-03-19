.class Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;
.super Ljava/lang/Object;
.source "VpnAddOrRetrieve.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnAddOrRetrieve;->saveVpnProfile(Lcom/android/settings/vpn2/VpnProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnAddOrRetrieve;

.field final synthetic val$profile:Lcom/android/settings/vpn2/VpnProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnAddOrRetrieve;Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;->this$0:Lcom/android/settings/vpn2/VpnAddOrRetrieve;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;->val$profile:Lcom/android/settings/vpn2/VpnProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;->this$0:Lcom/android/settings/vpn2/VpnAddOrRetrieve;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnAddOrRetrieve$1;->val$profile:Lcom/android/settings/vpn2/VpnProfile;

    # invokes: Lcom/android/settings/vpn2/VpnAddOrRetrieve;->saveVpnProfile(Lcom/android/settings/vpn2/VpnProfile;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn2/VpnAddOrRetrieve;->access$000(Lcom/android/settings/vpn2/VpnAddOrRetrieve;Lcom/android/settings/vpn2/VpnProfile;)V

    .line 249
    return-void
.end method
