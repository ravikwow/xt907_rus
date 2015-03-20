.class final enum Lcom/android/phone/InCallControlState$InCallControlCategory;
.super Ljava/lang/Enum;
.source "InCallControlState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallControlState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InCallControlCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallControlState$InCallControlCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallControlState$InCallControlCategory;

.field public static final enum BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

.field public static final enum MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/android/phone/InCallControlState$InCallControlCategory;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallControlState$InCallControlCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

    .line 90
    new-instance v0, Lcom/android/phone/InCallControlState$InCallControlCategory;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallControlState$InCallControlCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/InCallControlState$InCallControlCategory;

    sget-object v1, Lcom/android/phone/InCallControlState$InCallControlCategory;->BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallControlState$InCallControlCategory;->MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->$VALUES:[Lcom/android/phone/InCallControlState$InCallControlCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallControlState$InCallControlCategory;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/phone/InCallControlState$InCallControlCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallControlState$InCallControlCategory;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallControlState$InCallControlCategory;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->$VALUES:[Lcom/android/phone/InCallControlState$InCallControlCategory;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallControlState$InCallControlCategory;

    return-object v0
.end method
