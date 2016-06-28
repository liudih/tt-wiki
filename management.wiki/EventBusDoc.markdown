EventBus使用
======================
使用方法
~~~
//创建一个类

public class BaseCacheEvent {

	private String tableName;

	private EventType eventType;

	public BaseCacheEvent(String tableName, EventType eventType) {
		super();
		this.tableName = tableName;
		this.eventType = eventType;
	}
}

//~ 在类里面使用

@Autowired
private EventBus eventBus;


//~ 在对应方法中使用

eventBus.post(new BaseCacheEvent(...));


//~ 接收


@Component
public class BaseCacheHandler {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Subscribe
	public void clearCache(final BaseCacheEvent event) {
		log.info("Handle Event : {}", event.toString());
	}


}


~~~